# --
# Kernel/System/ITSMChange/Template.pm - all template functions
# Copyright (C) 2003-2010 OTRS AG, http://otrs.com/
# --
# $Id: Template.pm,v 1.28 2010-01-21 12:08:15 reb Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::System::ITSMChange::Template;

use strict;
use warnings;

use Kernel::System::ITSMChange;
use Kernel::System::ITSMChange::ITSMWorkOrder;
use Kernel::System::ITSMChange::ITSMCondition;
use Kernel::System::Valid;
use Kernel::System::VirtualFS;
use Data::Dumper;

use base qw(Kernel::System::EventHandler);

use vars qw($VERSION);
$VERSION = qw($Revision: 1.28 $) [1];

=head1 NAME

Kernel::System::ITSMChange::Template - template lib

=head1 SYNOPSIS

All functions for templates in ITSMChangeManagement.

=head1 PUBLIC INTERFACE

=over 4

=cut

=item new()

create an object

    use Kernel::Config;
    use Kernel::System::Encode;
    use Kernel::System::Log;
    use Kernel::System::DB;
    use Kernel::System::Main;
    use Kernel::System::Time;
    use Kernel::System::ITSMChange::Template;

    my $ConfigObject = Kernel::Config->new();
    my $EncodeObject = Kernel::System::Encode->new(
        ConfigObject => $ConfigObject,
    );
    my $LogObject = Kernel::System::Log->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
    );
    my $MainObject = Kernel::System::Main->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
    );
    my $TimeObject = Kernel::System::Time->new(
        ConfigObject => $ConfigObject,
        LogObject    => $LogObject,
    );
    my $DBObject = Kernel::System::DB->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
        MainObject   => $MainObject,
    );
    my $ConditionObject = Kernel::System::ITSMChange::Template->new(
        ConfigObject => $ConfigObject,
        EncodeObject => $EncodeObject,
        LogObject    => $LogObject,
        DBObject     => $DBObject,
        TimeObject   => $TimeObject,
        MainObject   => $MainObject,
    );

=cut

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = {};
    bless( $Self, $Type );

    # check needed objects
    for my $Object (qw(DBObject ConfigObject EncodeObject LogObject MainObject TimeObject)) {
        $Self->{$Object} = $Param{$Object} || die "Got no $Object!";
    }

    # set the debug flag
    $Self->{Debug} = $Param{Debug} || 0;

    # create additional objects
    $Self->{ChangeObject}    = Kernel::System::ITSMChange->new( %{$Self} );
    $Self->{ConditionObject} = Kernel::System::ITSMChange::ITSMCondition->new( %{$Self} );
    $Self->{WorkOrderObject} = Kernel::System::ITSMChange::ITSMWorkOrder->new( %{$Self} );
    $Self->{ValidObject}     = Kernel::System::Valid->new( %{$Self} );
    $Self->{VirtualFSObject} = Kernel::System::VirtualFS->new( %{$Self} );

    # init of event handler
    $Self->EventHandlerInit(
        Config     => 'ITSMTemplate::EventModule',
        BaseObject => 'TemplateObject',
        Objects    => {
            %{$Self},
        },
    );

    return $Self;
}

=item TemplateAdd()

Add a new template.

    my $TemplateID = $TemplateObject->TemplateAdd(
        Name           => 'The template name',
        Content        => '[{ ChangeAdd => { ... } }]',   # a serialized change, workorder, ...
        Comment        => 'A comment',                    # (optional)
        TemplateType   => 'ITSMChange',                   # alternatively: TemplateTypeID
        TemplateTypeID => 1,                              # alternatively: TemplateType
        ValidID        => 1,
        UserID         => 1,
    );

=cut

sub TemplateAdd {
    my ( $Self, %Param ) = @_;

    # check that not both TemplateType and TemplateTypeID are given
    if ( $Param{TemplateType} && $Param{TemplateTypeID} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Need either TemplateType OR TemplateTypeID - not both!',
        );
        return;
    }

    # when the template type is given, then look up the ID
    if ( $Param{TemplateType} ) {
        $Param{TemplateTypeID} = $Self->TemplateTypeLookup(
            TemplateType => $Param{TemplateType},
            UserID       => $Param{UserID},
        );
    }

    # check needed stuff
    for my $Argument (qw(Content Name TemplateTypeID ValidID UserID)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # check if a template with this name already exists
    return if !$Self->{DBObject}->Prepare(
        SQL   => 'SELECT id FROM change_template WHERE name = ?',
        Bind  => [ \$Param{Name} ],
        Limit => 1,
    );

    # fetch the result
    my $TemplateID;
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        $TemplateID = $Row[0];
    }

    # a template with this name exists already
    if ($TemplateID) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "A template with the name $Param{Name} already exists.!",
        );
        return;
    }

    # trigger TemplateAddPre-Event
    $Self->EventHandler(
        Event => 'TemplateAddPre',
        Data  => {
            %Param,
        },
        UserID => $Param{UserID},
    );

    # add new template to database
    return if !$Self->{DBObject}->Do(
        SQL => 'INSERT INTO change_template '
            . '(name, comments, content, type_id, valid_id, '
            . 'create_time, create_by, change_time, change_by) '
            . 'VALUES (?, ?, ?, ?, ?, current_timestamp, ?, current_timestamp, ?)',
        Bind => [
            \$Param{Name}, \$Param{Comment}, \$Param{Content}, \$Param{TemplateTypeID},
            \$Param{ValidID}, \$Param{UserID}, \$Param{UserID},
        ],
    );

    # prepare SQL statement
    return if !$Self->{DBObject}->Prepare(
        SQL   => 'SELECT id FROM change_template WHERE name = ?',
        Bind  => [ \$Param{Name} ],
        Limit => 1,
    );

    # fetch the result
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        $TemplateID = $Row[0];
    }

    # check if template could be added
    if ( !$TemplateID ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'TemplateAdd() failed!',
        );
        return;
    }

    # trigger TemplateAddPost-Event
    $Self->EventHandler(
        Event => 'TemplateUpdatePre',
        Data  => {
            %Param,
            TemplateID => $TemplateID,
        },
        UserID => $Param{UserID},
    );

    # TODO: all attachments in the template should be copied
    # in the virtual fs. Otherwise it could happen that an
    # attachment is deleted after template creation and therefor
    # no longer available.

    return $TemplateID;
}

=item TemplateUpdate()

Update a template.

    my $Success = $TemplateObject->TemplateUpdate(
        TemplateID => 1234,
        Name       => 'The template name',          # (optional)
        Comment    => 'A comment',                  # (optional)
        Content  => '[{ ChangeAdd => { ... } }]',   # (optional) a serialized change, workorder, ...
        ValidID    => 1,                            # (optional)
        TypeID     => 1,                            # (optional)
        UserID     => 1,
    );

=cut

sub TemplateUpdate {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(TemplateID UserID)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # trigger TemplateUpdatePre-Event
    $Self->EventHandler(
        Event => 'TemplateUpdatePre',
        Data  => {
            %Param,
        },
        UserID => $Param{UserID},
    );

    # get template data
    my $TemplateData = $Self->TemplateGet(
        TemplateID => $Param{TemplateID},
        UserID     => $Param{UserID},
    );

    # map update attributes to column names
    my %Attribute = (
        Name    => 'name',
        Comment => 'comments',
        Content => 'content',
        ValidID => 'valid_id',
        TypeID  => 'type_id',
    );

    # build SQL to update template
    my $SQL = 'UPDATE change_template SET ';
    my @Bind;

    ATTRIBUTE:
    for my $Attribute ( keys %Attribute ) {

        # preserve the old value, when the column isn't in function parameters
        next ATTRIBUTE if !exists $Param{$Attribute};

        # param checking has already been done, so this is safe
        $SQL .= "$Attribute{$Attribute} = ?, ";
        push @Bind, \$Param{$Attribute};
    }

    # add change time and change user
    $SQL .= 'change_time = current_timestamp, change_by = ? ';
    push @Bind, \$Param{UserID};

    # set matching of SQL statement
    $SQL .= 'WHERE id = ?';
    push @Bind, \$Param{TemplateID};

    # update template
    return if !$Self->{DBObject}->Do(
        SQL  => $SQL,
        Bind => \@Bind,
    );

    # trigger TemplateUpdatePost-Event
    $Self->EventHandler(
        Event => 'TemplateUpdatePost',
        Data  => {
            OldTemplateData => $TemplateData,
            %Param,
        },
        UserID => $Param{UserID},
    );

    # TODO: all attachments in the template should be copied
    # in the virtual fs. Otherwise it could happen that an
    # attachment is deleted after template creation and therefor
    # no longer available.

    return 1;
}

=item TemplateGet()

Returns a hash reference of the template data for a given TemplateID.

    my $TemplateData = $TemplateObject->TemplateGet(
        TemplateID => 123,
        UserID      => 1,
    );

The returned hash reference contains following elements:

    $TemplateData{TemplateID}
    $TemplateData{Name}
    $TemplateData{Comment}
    $TemplateData{Content}
    $TemplateData{TypeID}
    $TemplateData{Type}
    $TemplateData{ValidID}
    $TemplateData{CreateTime}
    $TemplateData{CreateBy}
    $TemplateData{ChangeTime}
    $TemplateData{ChangeBy}

=cut

sub TemplateGet {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(TemplateID UserID)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # prepare SQL statement
    return if !$Self->{DBObject}->Prepare(
        SQL => 'SELECT ct.id, ct.name, comments, content, type_id, ctt.name, '
            . 'ct.valid_id, ct.create_time, ct.create_by, ct.change_time, ct.change_by '
            . 'FROM change_template ct, change_template_type ctt '
            . 'WHERE ct.type_id = ctt.id AND ct.id = ?',
        Bind  => [ \$Param{TemplateID} ],
        Limit => 1,
    );

    # fetch the result
    my %TemplateData;
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        $TemplateData{TemplateID} = $Row[0];
        $TemplateData{Name}       = $Row[1];
        $TemplateData{Comment}    = $Row[2];
        $TemplateData{Content}    = $Row[3];
        $TemplateData{TypeID}     = $Row[4];
        $TemplateData{Type}       = $Row[5];
        $TemplateData{ValidID}    = $Row[6];
        $TemplateData{CreateTime} = $Row[7];
        $TemplateData{CreateBy}   = $Row[8];
        $TemplateData{ChangeTime} = $Row[9];
        $TemplateData{ChangeBy}   = $Row[10];
    }

    # check error
    if ( !%TemplateData ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => "TemplateID $Param{TemplateID} does not exist!",
        );
        return;
    }

    return \%TemplateData;
}

=item TemplateList()

return a hashref of all templates

    my $Templates = $TemplateObject->TemplateList(
        Valid          => 0,             # (optional) default 1 (0|1)
        CommentLength  => 15,            # (optional) default 0
        TemplateType   => 'ITSMChange'   # (optional) or TemplateTypeID
        TemplateTypeID => 1,             # (optional) or TemplateType
        UserID         => 1,
    );

returns

    $Templates = {
        1 => 'my template',
        3 => 'your template name',
    };

If parameter C<CommentLength> is passed, an excerpt (of the passed length)
of the comment is appended to the template name.
If the parameter C<TemplateType> or C<TemplateTypeID> is passed, then the
list of templates is restricted to the given type.

=cut

sub TemplateList {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(UserID)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # check that not both TemplateType and TemplateTypeID are given
    if ( $Param{TemplateType} && $Param{TemplateTypeID} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Need either TemplateType OR TemplateTypeID - not both!',
        );
        return;
    }

    # when the template type is given, then look up the ID
    if ( $Param{TemplateType} ) {
        $Param{TemplateTypeID} = $Self->TemplateTypeLookup(
            TemplateType => $Param{TemplateType},
            UserID       => $Param{UserID},
        );
    }

    # check valid param
    if ( !defined $Param{Valid} ) {
        $Param{Valid} = 1;
    }

    # define SQL statement
    my $SQL = 'SELECT id, name, comments FROM change_template ';
    my @SQLWhere;    # assemble the conditions used in the WHERE clause
    my @SQLBind;

    # restrict by template type
    if ( $Param{TemplateTypeID} ) {
        push @SQLWhere, "type_id = ?";
        push @SQLBind,  \$Param{TemplateTypeID};
    }

    # get only valid template ids
    if ( $Param{Valid} ) {

        my @ValidIDs = $Self->{ValidObject}->ValidIDsGet();
        my $ValidIDString = join ', ', @ValidIDs;

        push @SQLWhere, "valid_id IN ( $ValidIDString )";
    }

    # append the WHERE-clause
    if (@SQLWhere) {
        $SQL .= 'WHERE ';
        $SQL .= join ' AND ', map {"( $_ )"} @SQLWhere;
        $SQL .= ' ';
    }

    # prepare SQL statement
    return if !$Self->{DBObject}->Prepare(
        SQL  => $SQL,
        Bind => \@SQLBind,
    );

    # fetch the result
    my %Templates;
    while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
        $Templates{ $Row[0] } = [ $Row[1], $Row[2] ];
    }

    for my $Key ( keys %Templates ) {
        my ( $Name, $Comment ) = @{ $Templates{$Key} };

        my $CommentAppend = '';
        if ( $Param{CommentLength} ) {
            my $Length = $Param{CommentLength} > length $Comment
                ? length $Comment
                : $Param{CommentLength};
            my $Ellipsis = $Param{CommentLength} > length $Comment
                ? ''
                : '...';
            $Comment = substr $Comment, 0, $Length;
            $CommentAppend = ' (' . $Comment . $Ellipsis . ')';
        }

        $Templates{$Key} = $Name . $CommentAppend;
    }

    return \%Templates;
}

=item TemplateDelete()

Delete a template.

    my $Success = $TemplateObject->TemplateDelete(
        TemplateID => 123,
        UserID      => 1,
    );

=cut

sub TemplateDelete {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(TemplateID UserID)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # trigger TemplateDeletePre-Event
    $Self->EventHandler(
        Event => 'TemplateDeletePre',
        Data  => {
            %Param,
        },
        UserID => $Param{UserID},
    );

    # get template data
    my $TemplateData = $Self->TemplateGet(
        TemplateID => $Param{TemplateID},
        UserID     => $Param{UserID},
    );

    # delete template from database
    return if !$Self->{DBObject}->Do(
        SQL  => 'DELETE FROM change_template WHERE id = ?',
        Bind => [ \$Param{TemplateID} ],
    );

    # trigger TemplateDeletePost-Event
    $Self->EventHandler(
        Event => 'TemplateDeletePost',
        Data  => {
            OldTemplateData => $TemplateData,
            %Param,
        },
        UserID => $Param{UserID},
    );

    return 1;
}

=item TemplateTypeLookup()

Return the template type id when the template type name is passed.
Return the template type name when the template type id is passed.
When no template type id or template type name is found, then the
undefined value is returned.

    my $TypeID = $TemplateObject->TemplateTypeLookup(
        TemplateType => 'my template type name',
        UserID       => 1,
    );

    my $TxpeName = $TemplateObject->TemplateTypeLookup(
        TemplateTypeID => 42,
        UserID         => 1,
    );

=cut

sub TemplateTypeLookup {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{UserID} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Need UserID!',
        );
        return;
    }

    # the template type id or the template type name must be passed
    if ( !$Param{TemplateTypeID} && !$Param{TemplateType} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Need the TemplateTypeID or the TemplateType!',
        );
        return;
    }

    # only one of template id and template name can be passed
    if ( $Param{TemplateTypeID} && $Param{TemplateType} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Need either the TemplateType or the TemplateTemplateID, not both!',
        );
        return;
    }

    # get type id
    if ( $Param{TemplateType} ) {
        return if !$Self->{DBObject}->Prepare(
            SQL   => 'SELECT id FROM change_template_type WHERE name = ?',
            Bind  => [ \$Param{TemplateType} ],
            Limit => 1,
        );

        my $TypeID;
        while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
            $TypeID = $Row[0];
        }

        return $TypeID;
    }

    # get type name
    elsif ( $Param{TemplateTypeID} ) {

        return if !$Self->{DBObject}->Prepare(
            SQL   => 'SELECT name FROM change_template_type WHERE id = ?',
            Bind  => [ \$Param{TemplateTypeID} ],
            Limit => 1,
        );

        my $TypeName;
        while ( my @Row = $Self->{DBObject}->FetchrowArray() ) {
            $TypeName = $Row[0];
        }

        return $TypeName;
    }

    return;
}

=item TemplateSerialize()

This method is in fact a dispatcher for different template types.
Currently ITSMChangeManagement supports these template types:

ITSMChange
ITSMWorkOrder
CAB
ITSMCondition

The method returns a datastructure, serialized with Data::Dumper.

    my $ChangeTemplate = $TemplateObject->TemplateSerialize(
        TemplateType => 'ITSMChange',
        UserID       => 1,

        # other options needed depending on the template type
        ChangeID => 123,
    );

=cut

sub TemplateSerialize {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    if ( !$Param{UserID} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Need UserID!',
        );
        return;
    }

    # the template type id or the template type name must be passed
    if ( !$Param{TemplateTypeID} && !$Param{TemplateType} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Need the TemplateTypeID or the TemplateType!',
        );
        return;
    }

    # only one of template type name and template type id can be passed
    if ( $Param{TemplateType} && $Param{TemplateTypeID} ) {
        $Self->{LogObject}->Log(
            Priority => 'error',
            Message  => 'Need either the TemplateTypeID or the TemplateType, not both!',
        );
        return;
    }

    my $TemplateType = $Param{TemplateType};
    if ( $Param{TemplateTypeID} ) {
        $TemplateType = $Self->TemplateTypeLookup(
            TemplateTypeID => $Param{TemplateTypeID},
        );
    }

    # what types of templates are supported and what subroutines do the serialization
    my %Types2Subroutines = (
        ITSMChange    => '_ITSMChangeSerialize',
        ITSMWorkOrder => '_ITSMWorkOrderSerialize',
        ITSMCondition => '_ConditionSerialize',
        CAB           => '_CABSerialize',
    );

    return if !exists $Types2Subroutines{$TemplateType};

    my $Sub            = $Types2Subroutines{$TemplateType};
    my $SerializedData = $Self->$Sub(%Param);

    return $SerializedData;
}

=item TemplateDeSerialize()

This method deserializes the template content. It returns the
ID of the "main" element that was created based on the template.

    my $ElementID = $TemplateObject->TemplateDeSerialize(
        TemplateID => 123,
        UserID     => 1,
    );

=cut

sub TemplateDeSerialize {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(UserID TemplateID)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # get template
    my $Template = $Self->TemplateGet(
        %Param,
    );

    return if !$Template;

    # get the Perl datastructure
    my $TemplateContent = $Template->{Content};
    my $TemplateData;

    eval "\$TemplateData = $TemplateContent; 1;" or return;

    return if !$TemplateData;
    return if ref $TemplateData ne 'HASH';

    # create entities defined by the template
    my $ElementID = $Self->_CreateTemplateElements(
        %Param,
        Template => $TemplateData,
    );

    return $ElementID;
}

=begin Internal:

=item _CreateTemplateElements()

This method dispatches the elements creation. It calls the subroutine
that belongs to the given type (e.g. ChangeAdd). After that it
invokes itself for all the childrens of the main element.

This method returns the ID of the main element.

    my $ElementID = $TemplateObject->_CreateTemplateElements(
        Template => {
            ChangeAdd => { ... },
            Children  => [
                {
                    WorkOrderAdd => { ... },
                    Children     => [ ... ],
                },
                {
                    WorkOrderAdd => { ... },
                    Children     => [ ... ],
                },
            ],
        },

        # any other parameters can follow
    )

=cut

sub _CreateTemplateElements {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(Template)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # get children
    my $Children = delete $Param{Template}->{Children};
    $Children ||= [];

    # dispatch table
    my %Method2Subroutine = (
        ChangeAdd     => '_ChangeAdd',
        WorkOrderAdd  => '_WorkOrderAdd',
        CABAdd        => '_CABAdd',
        ConditionAdd  => '_ConditionAdd',
        AttachmentAdd => '_AttachmentAdd',
    );

    # get action
    my ( $Method, $Data ) = each %{ $Param{Template} };
    my $Sub = $Method2Subroutine{$Method};

    return if !$Sub;

    # create parent element
    my %ParentReturn = $Self->$Sub(
        %Param,
        Data => $Data,
    );

    # create child elements
    for my $Child ( @{$Children} ) {
        $Self->_CreateTemplateElements(
            %Param,
            %ParentReturn,
            Template => $Child,
        );
    }

    return $ParentReturn{ID};
}

=item _ITSMChangeSerialize()

Serialize a change. This is done with Data::Dumper. It returns
a serialized string of the datastructure. The change actions
are "wrapped" within an arrayreference...

    my $TemplateString = $TemplateObject->_ITSMChangeSerialize(
        ChangeID => 1,
        UserID   => 1,
        Return   => 'HASH', # (optional) HASH|STRING default 'STRING'
    );

returns

    '{ChangeAdd => {Title => 'title', ...}}, {WorkOrderAdd => { ChangeID => 123, ... }}'

If parameter C<Return> is set to C<HASH>, the Perl datastructure
is returned

    {
        ChangeAdd => { ... },
        Children  => [
            {
                WorkOrderAdd => { ... },
                Children     => [ ... ],
            },
            {
                WorkOrderAdd => { ... },
                Children     => [ ... ],
            },
        ],
    }

=cut

sub _ITSMChangeSerialize {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(UserID ChangeID)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # set default value for 'Return'
    $Param{Return} ||= 'STRING';

    # get change
    my $Change = $Self->{ChangeObject}->ChangeGet(
        ChangeID => $Param{ChangeID},
        UserID   => $Param{UserID},
    );

    return if !$Change;

    # keep only wanted attributes
    my $CleanChange;
    for my $Attribute
        (
        qw(ChangeID ChangeNumber ChangeStateID ChangeTitle Description DescriptionPlain
        Justification JustificationPlain ChangeManagerID ChangeBuilderID CategoryID
        ImpactID PriorityID CABAgents CABCustomers RequestedTime CreateTime CreateBy
        ChangeTime ChangeBy PlannedStartTime PlannedEndTime)
        )
    {
        $CleanChange->{$Attribute} = $Change->{$Attribute};
    }

    my $OriginalData = { ChangeAdd => $CleanChange };

    # get workorders
    WORKORDERID:
    for my $WorkOrderID ( @{ $Change->{WorkOrderIDs} } ) {
        my $WorkOrder = $Self->_ITSMWorkOrderSerialize(
            WorkOrderID => $WorkOrderID,
            UserID      => $Param{UserID},
            Return      => 'HASH',
        );

        next WORKORDERID if !$WorkOrder;

        push @{ $OriginalData->{Children} }, $WorkOrder;
    }

    # get condition list for the change
    my $ConditionList = $Self->{ConditionObject}->ConditionList(
        ChangeID => $Param{ChangeID},
        Valid    => 0,
        UserID   => $Param{UserID},
    ) || [];

    # get each condition
    CONDITIONID:
    for my $ConditionID ( @{$ConditionList} ) {
        my $Condition = $Self->_ConditionSerialize(
            ConditionID => $ConditionID,
            UserID      => $Param{UserID},
            Return      => 'HASH',
        );

        next CONDITIONID if !$Condition;

        push @{ $OriginalData->{Children} }, $Condition;
    }

    # get attachments
    my %ChangeAttachments = $Self->{ChangeObject}->ChangeAttachmentList(
        ChangeID => $Change->{ChangeID},
    );
    for my $FileID ( keys %ChangeAttachments ) {

        # save attachments to this template
        push @{ $OriginalData->{Children} }, { AttachmentAdd => { FileID => $FileID } };
    }

    if ( $Param{Return} eq 'HASH' ) {
        return $OriginalData;
    }

    # no indentation (saves space)
    local $Data::Dumper::Indent = 0;

    # do not use cross-referencing
    local $Data::Dumper::Deepcopy = 1;

    # serialize the data (do not use $VAR1, but $TemplateData for Dumper output)
    my $SerializedData = Data::Dumper->Dump( [$OriginalData], ['TemplateData'] );

    return $SerializedData;
}

=item _ITSMWorkOrderSerialize()

Serialize a workorder. This is done with Data::Dumper. It returns
a serialized string of the datastructure. The workorder actions
are "wrapped" within a hashreference...

    my $TemplateString = $TemplateObject->_ITSMWorkOrderSerialize(
        WorkOrderID => 1,
        UserID      => 1,
        Return      => 'HASH', # (optional) HASH|STRING default 'STRING'
    );

returns

    '{WorkOrderAdd => { ChangeID => 123, ... }}'

If parameter C<Return> is set to C<HASH>, the Perl datastructure
is returned

    {
        WorkOrderAdd => { ... },
        Children     => [ ... ],
    }

=cut

sub _ITSMWorkOrderSerialize {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(UserID WorkOrderID)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # set default value for 'Return'
    $Param{Return} ||= 'STRING';

    # get workorder
    my $WorkOrder = $Self->{WorkOrderObject}->WorkOrderGet(
        WorkOrderID => $Param{WorkOrderID},
        UserID      => $Param{UserID},
    );

    return if !$WorkOrder;

    # keep just wanted attributes
    my $CleanWorkOrder;
    for my $Attribute (
        qw(WorkOrderID ChangeID WorkOrderNumber WorkOrderTitle Instruction InstructionPlain
        Report ReportPlain WorkOrderStateID WorkOrderTypeID WorkOrderAgentID PlannedStartTime
        PlannedEndTime ActualStartTime ActualEndTime AccountedTime PlannedEffort
        CreateTime CreateBy ChangeTime ChangeBy)
        )
    {
        $CleanWorkOrder->{$Attribute} = $WorkOrder->{$Attribute};
    }

    # templates have to be an array reference;
    my $OriginalData = { WorkOrderAdd => $CleanWorkOrder };

    # get attachments
    my %WorkOrderAttachments = $Self->{WorkOrderObject}->WorkOrderAttachmentList(
        WorkOrderID => $WorkOrder->{WorkOrderID},
    );
    for my $FileID ( keys %WorkOrderAttachments ) {

        # save attachments to this template
        push @{ $OriginalData->{Children} }, { AttachmentAdd => { FileID => $FileID } };
    }

    if ( $Param{Return} eq 'HASH' ) {
        return $OriginalData;
    }

    # no indentation (saves space)
    local $Data::Dumper::Indent = 0;

    # do not use cross-referencing
    local $Data::Dumper::Deepcopy = 1;

    # serialize the data (do not use $VAR1, but $TemplateData for Dumper output)
    my $SerializedData = Data::Dumper->Dump( [$OriginalData], ['TemplateData'] );

    return $SerializedData;
}

=item _CABSerialize()

Serialize the CAB of a change. This is done with Data::Dumper. It returns
a serialized string of the datastructure. The CAB actions
are "wrapped" within a hashreference...

    my $TemplateString = $TemplateObject->_CABSerialize(
        ChangeID => 1,
        UserID   => 1,
        Return   => 'HASH', # (optional) HASH|STRING default 'STRING'
    );

returns

    '{CABAdd => { CABCustomers => [ 'mm@localhost' ], ... }}'

If parameter C<Return> is set to C<HASH>, the Perl datastructure
is returned

    {
        CABAdd   => { ... },
        Children => [ ... ],
    }

=cut

sub _CABSerialize {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(UserID ChangeID)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # set default value for 'Return'
    $Param{Return} ||= 'STRING';

    # get CAB of the change
    my $Change = $Self->{ChangeObject}->ChangeGet(
        ChangeID => $Param{ChangeID},
        UserID   => $Param{UserID},
    );

    return if !$Change;

    # templates have to be an array reference;
    my $OriginalData = {
        CABAdd => {
            CABCustomers => $Change->{CABCustomers},
            CABAgents    => $Change->{CABAgents},
        },
    };

    if ( $Param{Return} eq 'HASH' ) {
        return $OriginalData;
    }

    # no indentation (saves space)
    local $Data::Dumper::Indent = 0;

    # do not use cross-referencing
    local $Data::Dumper::Deepcopy = 1;

    # serialize the data (do not use $VAR1, but $TemplateData for Dumper output)
    my $SerializedData = Data::Dumper->Dump( [$OriginalData], ['TemplateData'] );

    return $SerializedData;

}

=item _ConditionSerialize()

Serialize a condition. This is done with Data::Dumper. It returns
a serialized string of the datastructure. The condition actions
are "wrapped" within a hashreference...

    my $TemplateString = $TemplateObject->_ConditionSerialize(
        ConditionID => 1,
        UserID      => 1,
        Return      => 'HASH', # (optional) HASH|STRING default 'STRING'
    );

returns

    '{ConditionAdd => { ... }}'

If parameter C<Return> is set to C<HASH>, the Perl datastructure
is returned

    {
        ConditionAdd => { ... },
        Children     => [ ... ],
    }

=cut

sub _ConditionSerialize {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(UserID ConditionID)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # set default value for 'Return'
    $Param{Return} ||= 'STRING';

    # get condition
    my $Condition = $Self->{ConditionObject}->ConditionGet(
        ConditionID => $Param{ConditionID},
        UserID      => $Param{UserID},
    );

    return if !$Condition;

    # templates have to be an array reference;
    my $OriginalData = { ConditionAdd => $Condition };

    # get expressions
    my $Expressions = $Self->{ConditionObject}->ExpressionList(
        ConditionID => $Param{ConditionID},
        UserID      => $Param{UserID},
    ) || [];

    # add each expression to condition data
    for my $ExpressionID ( @{$Expressions} ) {
        my $Expression = $Self->{ConditionObject}->ExpressionGet(
            ExpressionID => $ExpressionID,
            UserID       => $Param{UserID},
        );

        push @{ $OriginalData->{Children} }, { ExpressionAdd => $Expression };
    }

    if ( $Param{Return} eq 'HASH' ) {
        return $OriginalData;
    }

    # no indentation (saves space)
    local $Data::Dumper::Indent = 0;

    # do not use cross-referencing
    local $Data::Dumper::Deepcopy = 1;

    # serialize the data (do not use $VAR1, but $TemplateData for Dumper output)
    my $SerializedData = Data::Dumper->Dump( [$OriginalData], ['TemplateData'] );

    return $SerializedData;
}

=item _ChangeAdd()

Creates a new change based on a template. It returns a hash with additional
info like ChangeID.

    my %Return = $TemplateObject->_ChangeAdd(
        Data => {
            ChangeTitle => 'test',
        },
        # other change attributes
        ChangeID => 0,
        UserID   => 1,
    );

=cut

sub _ChangeAdd {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(UserID Data)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # make a local copy
    my %Data = %{ $Param{Data} };

    # these attributes are generated automatically, so don't pass them to ChangeAdd()
    delete @Data{qw(ChangeID ChangeNumber CreateTime CreateBy ChangeTime ChangeBy)};

    # if user set a new time, calculate difference
    my $Difference;
    if ( $Param{NewTimeInEpoche} ) {
        my $OldTime = $Data{ $Param{MoveTimeType} };

        if ($OldTime) {
            $Difference = $Self->_GetTimeDifference(
                CurrentTime     => $OldTime,
                NewTimeInEpoche => $Param{NewTimeInEpoche},
            );
        }
    }

    # PlannedXXXTime was saved just for "move time" purposes
    delete $Data{PlannedEndTime};
    delete $Data{PlannedStartTime};

    # RequestedTime should not be set
    delete $Data{RequestedTime};

    # delete all parameters whose values are 'undef'
    # _CheckChangeParams throws an error otherwise
    for my $Parameter ( keys %Data ) {
        delete $Data{$Parameter} if !defined $Data{$Parameter};
    }

    # add the change
    my $ChangeID = $Self->{ChangeObject}->ChangeAdd(
        %Data,
        UserID => $Param{UserID},
    );

    my %Info = (
        ID             => $ChangeID,
        ChangeID       => $ChangeID,
        TimeDifference => $Difference,
    );

    return %Info;
}

=item _WorkOrderAdd()

Creates a new workorder based on a template. It returns the
change id it was created for and the new workorder id.

    my ( $ChangeID, $WorkOrderID ) = $TemplateObject->_WorkOrderAdd(
        Data => {
            WorkOrderTitle => 'test',
        },
        ChangeID       => 1,
        UserID         => 1,
    );

=cut

sub _WorkOrderAdd {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(UserID ChangeID Data)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # make a local copy
    my %Data = %{ $Param{Data} };

    # these attributes are generated automatically, so don't pass them to WorkOrderAdd()
    delete @Data{qw(WorkOrderID WorkOrderNumber CreateTime CreateBy ChangeTime ChangeBy)};

    # delete all parameters whose values are 'undef'
    # _CheckWorkOrderParams throws an error otherwise
    for my $Parameter ( keys %Data ) {
        delete $Data{$Parameter} if !defined $Data{$Parameter};
    }

    # xxx(?:Start|End)Times are empty strings on WorkOrderGet when
    # no time value is set. This confuses _CheckTimestamps. Thus
    # delete these parameters.
    for my $Prefix (qw(Actual Planned)) {
        for my $Suffix (qw(Start End)) {
            if ( $Data{"$Prefix${Suffix}Time"} eq '' ) {
                delete $Data{"$Prefix${Suffix}Time"};
            }
        }
    }

    # move time slot for workorder if
    my $Difference = $Param{TimeDifference};
    if ( $Difference || $Param{NewTimeInEpoche} ) {

        # calc new values for start and end time
        for my $Suffix (qw(Start End)) {
            if ( $Data{"Planned${Suffix}Time"} ) {

                # get difference if not already calculated
                if ( !$Difference && $Param{NewTimeInEpoche} ) {
                    $Difference = $Self->_GetTimeDifference(
                        CurrentTime     => $Data{"Planned${Suffix}Time"},
                        NewTimeInEpoche => $Param{NewTimeInEpoche},
                    );
                }

                # get new value
                $Data{"Planned${Suffix}Time"} = $Self->_MoveTime(
                    CurrentTime => $Data{"Planned${Suffix}Time"},
                    Difference  => $Difference,
                );
            }
        }

    }

    # override the change id from the template
    my $WorkOrderID = $Self->{WorkOrderObject}->WorkOrderAdd(
        %Data,
        ChangeID => $Param{ChangeID},
        UserID   => $Param{UserID},
    );

    my %Info = (
        ID          => $WorkOrderID,
        WorkOrderID => $WorkOrderID,
        ChangeID    => $Param{ChangeID},
    );

    return %Info;
}

=item _CABAdd()

Updates the CAB of a change based on the given CAB template. It
returns the change id the cab is for.

    my $ChangeID = $TemplateObject->_CABAdd(
        Data => {
            CABCustomers => [ 'mm@localhost' ],
            CABAgents    => [ 1, 2 ],
        },
        ChangeID => 1,
        UserID   => 1,
    );

=cut

sub _CABAdd {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(UserID ChangeID Data)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # get current CAB of change
    my $Change = $Self->{ChangeObject}->ChangeGet(
        ChangeID => $Param{ChangeID},
        UserID   => $Param{UserID},
    );

    # a CAB add is actually a CAB update on a change
    return if !$Self->{ChangeObject}->ChangeCABUpdate(
        ChangeID     => $Param{ChangeID},
        CABCustomers => [ @{ $Param{Data}->{CABCustomers} }, @{ $Change->{CABCustomers} } ],
        CABAgents    => [ @{ $Param{Data}->{CABAgents} }, @{ $Change->{CABAgents} } ],
        UserID       => $Param{UserID},
    );

    my %Info = (
        ID       => $Param{ChangeID},
        ChangeID => $Param{ChangeID},
    );

    return %Info;
}

=item _ConditionAdd()

Creates new conditions for a change based on the given template. It
returns a hash of information (change id it was created for, id is
the condition id)

    my %Info = $TemplateObject->_ConditionAdd(
        Data => {
            # ... Params for ConditionAdd
        },
        ChangeID => 1,
        UserID   => 1,
    );

=cut

sub _ConditionAdd {
    my ( $Self, %Param ) = @_;

    # add condition
    my $ConditionID = $Self->{ConditionObject}->ConditionAdd(
        %Param,
    );

    my %Info = (
        ID       => $ConditionID,
        ChangeID => $Param{ChangeID},
    );

    return %Info;
}

=item _AttachmentAdd()

=cut

sub _AttachmentAdd {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(UserID ChangeID Data)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    my $Success;

    # if this is a workorder attachment
    if ( $Param{WorkOrderID} ) {
        my $Attachment = $Self->{WorkOrderObject}->WorkOrderAttachmentGet(
            FileID => $Param{Data}->{FileID},
        );

        $Success = $Self->{WorkOrderObject}->WorkOrderAttachmentAdd(
            %{$Attachment},
            ChangeID    => $Param{ChangeID},
            WorkOrderID => $Param{WorkOrderID},
            UserID      => $Param{UserID},
        );
    }

    # if it is a change attachment
    else {
        my $Attachment = $Self->{ChangeObject}->ChangeAttachmentGet(
            FileID => $Param{Data}->{FileID},
        );

        $Success = $Self->{ChangeObject}->ChangeAttachmentAdd(
            %{$Attachment},
            ChangeID => $Param{ChangeID},
            UserID   => $Param{UserID},
        );
    }

    return $Success;
}

=item _GetTimeDifference()

If a new planned start/end time was given, the difference is needed
to move all time values

    my $DiffInSeconds = $TemplateObject->_GetTimeDifference(
        CurrentTime     => '2010-01-12 00:00:00',
        NewTimeInEpoche => 1234567890,
    );

=cut

sub _GetTimeDifference {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(CurrentTime NewTimeInEpoche)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # get current time as timestamp
    my $CurrentSystemTime = $Self->{TimeObject}->TimeStamp2SystemTime(
        String => $Param{CurrentTime},
    );

    my $DiffSeconds = $Param{NewTimeInEpoche} - $CurrentSystemTime;

    return $DiffSeconds;
}

=item _MoveTime()

This method returns the new value for a time column based on the
difference.

    my $TimeValue = $TemplateObject->_MoveTime(
        CurrentTime => '2010-01-12 00:00:00',
        Difference  => 135,                     # in seconds
    );

=cut

sub _MoveTime {
    my ( $Self, %Param ) = @_;

    # check needed stuff
    for my $Argument (qw(CurrentTime Difference)) {
        if ( !$Param{$Argument} ) {
            $Self->{LogObject}->Log(
                Priority => 'error',
                Message  => "Need $Argument!",
            );
            return;
        }
    }

    # get current time as timestamp
    my $CurrentSystemTime = $Self->{TimeObject}->TimeStamp2SystemTime(
        String => $Param{CurrentTime},
    );

    # get planned time as timestamp
    my $NewTime = $Self->{TimeObject}->SystemTime2TimeStamp(
        SystemTime => $CurrentSystemTime + $Param{Difference},
    );

    return $NewTime;
}

1;

=end Internal:

=back

=head1 TERMS AND CONDITIONS

This software is part of the OTRS project (http://otrs.org/).

This software comes with ABSOLUTELY NO WARRANTY. For details, see
the enclosed file COPYING for license information (AGPL). If you
did not receive this file, see http://www.gnu.org/licenses/agpl.txt.

=cut

=head1 VERSION

$Revision: 1.28 $ $Date: 2010-01-21 12:08:15 $

=cut
