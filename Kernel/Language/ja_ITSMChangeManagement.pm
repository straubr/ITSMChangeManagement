# --
# Kernel/Language/ja_ITSMChangeManagement.pm - translation file
# Copyright (C) 2001-2015 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::ja_ITSMChangeManagement;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAITSMChangeManagement
    $Self->{Translation}->{'ITSMChange'} = 'ITSM変更管理';
    $Self->{Translation}->{'ITSMChanges'} = 'ITSM変更管理';
    $Self->{Translation}->{'ITSM Changes'} = 'ITSM変更管理';
    $Self->{Translation}->{'workorder'} = '作業オーダー';
    $Self->{Translation}->{'A change must have a title!'} = '「タイトル」は入力必須です。';
    $Self->{Translation}->{'A condition must have a name!'} = '「名前」は入力必須です。';
    $Self->{Translation}->{'A template must have a name!'} = '「名前」は入力必須です。';
    $Self->{Translation}->{'A workorder must have a title!'} = '「タイトル」は入力必須です。';
    $Self->{Translation}->{'ActionExecute::successfully'} = '';
    $Self->{Translation}->{'ActionExecute::unsuccessfully'} = '';
    $Self->{Translation}->{'Add CAB Template'} = 'CABテンプレートを追加';
    $Self->{Translation}->{'Add Workorder'} = '作業オーダーを追加';
    $Self->{Translation}->{'Add a workorder to the change'} = '変更用作業オーダーを追加';
    $Self->{Translation}->{'Add new condition and action pair'} = '新しいアクションと条件のペアを追加';
    $Self->{Translation}->{'Agent interface module to show the ChangeManager overview icon.'} =
        'エージェントインターフェイスモジュールは、ChangeManager概要アイコンを表示する。';
    $Self->{Translation}->{'Agent interface module to show the MyCAB overview icon.'} = 'エージェントインターフェイスモジュールは、MyCAB概要アイコンを表示する。';
    $Self->{Translation}->{'Agent interface module to show the MyChanges overview icon.'} = 'エージェントインターフェイスモジュールは、MyChanges概要アイコンを表示する。';
    $Self->{Translation}->{'Agent interface module to show the MyWorkOrders overview icon.'} =
        'エージェントインターフェイスモジュールは、MyWorkOrders概要アイコンを表示する。';
    $Self->{Translation}->{'CABAgents'} = 'CABエージェント';
    $Self->{Translation}->{'CABCustomers'} = 'CAB顧客';
    $Self->{Translation}->{'Change Overview'} = '変更 概要';
    $Self->{Translation}->{'Change Schedule'} = '変更 スケジュール';
    $Self->{Translation}->{'Change involved persons of the change'} = '変更管理関係者の変更';
    $Self->{Translation}->{'ChangeHistory::ActionAdd'} = '%s: %s';
    $Self->{Translation}->{'ChangeHistory::ActionAddID'} = '(暫定)ChangeHistory::ActionAddID (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ActionDelete'} = '(暫定)ChangeHistory::ActionDelete (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ActionDeleteAll'} = '(暫定)ChangeHistory::ActionDeleteAll(ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ActionExecute'} = '(暫定)ChangeHistory::ActionExecute(ID=%s) : %s';
    $Self->{Translation}->{'ChangeHistory::ActionUpdate'} = '(暫定)ChangeHistory::ActionUpdate %s (%s):: %s -> %s';
    $Self->{Translation}->{'ChangeHistory::ChangeActualEndTimeReached'} = '(暫定)ChangeHistory::ChangeActualEndTimeReached(ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ChangeActualStartTimeReached'} = '(暫定)ChangeHistory::ChangeActualStartTimeReached(ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ChangeAdd'} = '(暫定)ChangeHistory::ChangeAdd(ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ChangeAttachmentAdd'} = '(暫定)ChangeHistory::ChangeAttachmentAdd: %s';
    $Self->{Translation}->{'ChangeHistory::ChangeAttachmentDelete'} = '(暫定)ChangeHistory::ChangeAttachmentDelete %s';
    $Self->{Translation}->{'ChangeHistory::ChangeCABDelete'} = '(暫定)ChangeHistory::ChangeCABDelete %s';
    $Self->{Translation}->{'ChangeHistory::ChangeCABUpdate'} = '(暫定)ChangeHistory::ChangeCABUpdate %s: : %s -> : %s';
    $Self->{Translation}->{'ChangeHistory::ChangeLinkAdd'} = '(暫定)ChangeHistory::ChangeLinkAdd %s (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ChangeLinkDelete'} = '(暫定)ChangeHistory::ChangeLinkDelete %s (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ChangeNotificationSent'} = '(暫定)ChangeHistory::ChangeNotificationSent %s (%s)';
    $Self->{Translation}->{'ChangeHistory::ChangePlannedEndTimeReached'} = '(暫定)ChangeHistory::ChangePlannedEndTimeReached (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ChangePlannedStartTimeReached'} = '(暫定)ChangeHistory::ChangePlannedStartTimeReached (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ChangeRequestedTimeReached'} = '(暫定)ChangeHistory::ChangeRequestedTimeReached(ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ChangeUpdate'} = '(暫定)ChangeHistory::ChangeUpdate %s: %s -> %s';
    $Self->{Translation}->{'ChangeHistory::ConditionAdd'} = '(暫定)ChangeHistory::ConditionAdd %s: %s';
    $Self->{Translation}->{'ChangeHistory::ConditionAddID'} = '(暫定)ChangeHistory::ConditionAddID (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ConditionDelete'} = '(暫定)ChangeHistory::ConditionDelete (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ConditionDeleteAll'} = '(暫定)ChangeHistory::ConditionDeleteAll (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ConditionUpdate'} = '(暫定)ChangeHistory::ConditionUpdate (%s): : %s -> %s';
    $Self->{Translation}->{'ChangeHistory::ExpressionAdd'} = '(暫定)ChangeHistory::ExpressionAdd %s: %s';
    $Self->{Translation}->{'ChangeHistory::ExpressionAddID'} = '(暫定)ChangeHistory::ExpressionAddID (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ExpressionDelete'} = '(暫定)ChangeHistory::ExpressionDelete (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ExpressionDeleteAll'} = '(暫定)ChangeHistory::ExpressionDeleteAll (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ExpressionUpdate'} = '(暫定)ChangeHistory::ExpressionUpdate %s (%s):: %s -> %s';
    $Self->{Translation}->{'ChangeNumber'} = '変更番号';
    $Self->{Translation}->{'Condition Edit'} = '条件の編集';
    $Self->{Translation}->{'Create Change'} = '変更を作成';
    $Self->{Translation}->{'Create a change from this ticket!'} = 'このチケットの変更を作成';
    $Self->{Translation}->{'Delete Workorder'} = '作業オーダーを削除';
    $Self->{Translation}->{'Edit the change'} = '変更の編集';
    $Self->{Translation}->{'Edit the conditions of the change'} = '変更の条件を編集';
    $Self->{Translation}->{'Edit the workorder'} = '作業オーダーを編集';
    $Self->{Translation}->{'Expression'} = '期限';
    $Self->{Translation}->{'Full-Text Search in Change and Workorder'} = '変更・作業オーダーの全文字検索';
    $Self->{Translation}->{'ITSMCondition'} = 'ITSM条件';
    $Self->{Translation}->{'ITSMWorkOrder'} = 'ITSM業務指示';
    $Self->{Translation}->{'Link another object to the change'} = '';
    $Self->{Translation}->{'Link another object to the workorder'} = '';
    $Self->{Translation}->{'Move all workorders in time'} = '';
    $Self->{Translation}->{'My CABs'} = '作成済み　CAB';
    $Self->{Translation}->{'My Changes'} = '作成済み 変更';
    $Self->{Translation}->{'My Workorders'} = '作成済み ワークオーダー';
    $Self->{Translation}->{'No XXX settings'} = '.... ....... \'%s\'';
    $Self->{Translation}->{'PIR (Post Implementation Review)'} = '事後レビュー';
    $Self->{Translation}->{'PSA (Projected Service Availability)'} = 'PSA(プロジェクトサービス可用性)';
    $Self->{Translation}->{'Please select first a catalog class!'} = '';
    $Self->{Translation}->{'Print the change'} = '';
    $Self->{Translation}->{'Print the workorder'} = '';
    $Self->{Translation}->{'RequestedTime'} = '';
    $Self->{Translation}->{'Save Change CAB as Template'} = '';
    $Self->{Translation}->{'Save change as a template'} = '';
    $Self->{Translation}->{'Save workorder as a template'} = '';
    $Self->{Translation}->{'Search Changes'} = '変更を検索';
    $Self->{Translation}->{'Set the agent for the workorder'} = 'ワークオーダーを担当するエージェントを設定する';
    $Self->{Translation}->{'Take Workorder'} = 'ワークオーダーを受け取る';
    $Self->{Translation}->{'Take the workorder'} = 'ワークオーダーを受け取る';
    $Self->{Translation}->{'Template Overview'} = 'テンプレート概要';
    $Self->{Translation}->{'The planned end time is invalid!'} = '計画されている終了時間が不正です!';
    $Self->{Translation}->{'The planned start time is invalid!'} = '計画されている開始時間が不正です!';
    $Self->{Translation}->{'The planned time is invalid!'} = '計画されている時間が不正です!';
    $Self->{Translation}->{'The requested time is invalid!'} = 'リクエストされた時間が不正です!';
    $Self->{Translation}->{'New (from template)'} = '新規(テンプレートから)';
    $Self->{Translation}->{'Add from template'} = 'テンプレートから追加する';
    $Self->{Translation}->{'Add Workorder (from template)'} = '';
    $Self->{Translation}->{'Add a workorder (from template) to the change'} = '';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderActualEndTimeReached'} = '(暫定)WorkOrderHistory::WorkOrderActualEndTimeReached (ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderActualEndTimeReachedWithWorkOrderID'} =
        '(暫定)WorkOrderHistory::WorkOrderActualEndTimeReachedWithWorkOrderID (ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderActualStartTimeReached'} = '(暫定)WorkOrderHistory::WorkOrderActualStartTimeReached(ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderActualStartTimeReachedWithWorkOrderID'} =
        '(暫定)WorkOrderHistory::WorkOrderActualStartTimeReachedWithWorkOrderID(ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderAdd'} = '(暫定)WorkOrderHistory::WorkOrderAdd(ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderAddWithWorkOrderID'} = '(暫定)WorkOrderHistory::WorkOrderAddWithWorkOrderID(ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderAttachmentAdd'} = '(暫定)WorkOrderHistory::WorkOrderAttachmentAdd: %s';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderAttachmentAddWithWorkOrderID'} = '(暫定)WorkOrderHistory::WorkOrderAttachmentAddWithWorkOrderID(ID=%s): %s';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderAttachmentDelete'} = '(暫定)WorkOrderHistory::WorkOrderAttachmentDelete: %s';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderAttachmentDeleteWithWorkOrderID'} = '(暫定)WorkOrderHistory::WorkOrderAttachmentDeleteWithWorkOrderID(ID=%s) : %s';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderReportAttachmentAdd'} = '';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderReportAttachmentAddWithWorkOrderID'} =
        '';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderReportAttachmentDelete'} = '';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderReportAttachmentDeleteWithWorkOrderID'} =
        '';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderDelete'} = '(暫定)WorkOrderHistory::WorkOrderDelete (ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderDeleteWithWorkOrderID'} = '(暫定)WorkOrderHistory::WorkOrderDeleteWithWorkOrderID(ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderLinkAdd'} = '(暫定)WorkOrderHistory::WorkOrderLinkAdd %s (ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderLinkAddWithWorkOrderID'} = '(暫定)WorkOrderHistory::WorkOrderLinkAddWithWorkOrderID(ID=%s) %s (ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderLinkDelete'} = '(暫定)WorkOrderHistory::WorkOrderLinkDelete %s (ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderLinkDeleteWithWorkOrderID'} = '(暫定)WorkOrderHistory::WorkOrderLinkDeleteWithWorkOrderID (ID=%s) %s (ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderNotificationSent'} = '(暫定)WorkOrderHistory::WorkOrderNotificationSent %s ): %s(';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderNotificationSentWithWorkOrderID'} = '(暫定)WorkOrderHistory::WorkOrderNotificationSentWithWorkOrderID (ID=%s)  %s (%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderPlannedEndTimeReached'} = '(暫定)WorkOrderHistory::WorkOrderPlannedEndTimeReached (ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderPlannedEndTimeReachedWithWorkOrderID'} =
        '(暫定)WorkOrderHistory::WorkOrderPlannedEndTimeReachedWithWorkOrderID (ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderPlannedStartTimeReached'} = '(暫定)WorkOrderHistory::WorkOrderPlannedStartTimeReached(ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderPlannedStartTimeReachedWithWorkOrderID'} =
        '(暫定)WorkOrderHistory::WorkOrderPlannedStartTimeReachedWithWorkOrderID(ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderUpdate'} = '(暫定)WorkOrderHistory::WorkOrderUpdate %s:: %s -> :%s';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderUpdateWithWorkOrderID'} = '(暫定)WorkOrderHistory::WorkOrderUpdateWithWorkOrderID(ID=%s) %s:: %s -> : %s';
    $Self->{Translation}->{'WorkOrderNumber'} = 'ワークオーダー番号';
    $Self->{Translation}->{'accepted'} = '承認済み';
    $Self->{Translation}->{'any'} = 'すべて';
    $Self->{Translation}->{'approval'} = '認証';
    $Self->{Translation}->{'approved'} = '承認済み';
    $Self->{Translation}->{'backout'} = '';
    $Self->{Translation}->{'begins with'} = '';
    $Self->{Translation}->{'canceled'} = 'キャンセル';
    $Self->{Translation}->{'contains'} = '含んでいる';
    $Self->{Translation}->{'created'} = '作成済み';
    $Self->{Translation}->{'decision'} = '決定';
    $Self->{Translation}->{'ends with'} = 'で終了';
    $Self->{Translation}->{'failed'} = '失敗';
    $Self->{Translation}->{'in progress'} = '進行中';
    $Self->{Translation}->{'is'} = 'である';
    $Self->{Translation}->{'is after'} = '';
    $Self->{Translation}->{'is before'} = '';
    $Self->{Translation}->{'is empty'} = '';
    $Self->{Translation}->{'is greater than'} = '';
    $Self->{Translation}->{'is less than'} = '';
    $Self->{Translation}->{'is not'} = '';
    $Self->{Translation}->{'is not empty'} = '';
    $Self->{Translation}->{'not contains'} = '';
    $Self->{Translation}->{'pending approval'} = '';
    $Self->{Translation}->{'pending pir'} = '';
    $Self->{Translation}->{'pir'} = '';
    $Self->{Translation}->{'ready'} = '準備完了';
    $Self->{Translation}->{'rejected'} = '却下';
    $Self->{Translation}->{'requested'} = '';
    $Self->{Translation}->{'retracted'} = '取消済み';
    $Self->{Translation}->{'set'} = '';
    $Self->{Translation}->{'successful'} = '';

    # Template: AdminITSMChangeCIPAllocate
    $Self->{Translation}->{'Category <-> Impact <-> Priority'} = 'カテゴリ  <-> 影響度 <-> 優先度';
    $Self->{Translation}->{'Manage the priority result of combinating Category <-> Impact.'} =
        'カテゴリと影響度の組み合わせによって優先度を管理します。';
    $Self->{Translation}->{'Priority allocation'} = '優先度の割り当て';

    # Template: AdminITSMChangeNotification
    $Self->{Translation}->{'ITSM ChangeManagement Notification Management'} = 'ITSM 変更管理の通知管理';
    $Self->{Translation}->{'Add Notification Rule'} = '通知ルールを追加';
    $Self->{Translation}->{'Rule'} = 'ルール';
    $Self->{Translation}->{'Recipients'} = '';
    $Self->{Translation}->{'A notification should have a name!'} = '通知には名称が必須です。';
    $Self->{Translation}->{'Name is required.'} = '名称は入力必須です。';

    # Template: AdminITSMStateMachine
    $Self->{Translation}->{'Admin State Machine'} = 'マシンの管理状況';
    $Self->{Translation}->{'Select a catalog class!'} = 'カタログクラスの選択は必須です。';
    $Self->{Translation}->{'A catalog class is required!'} = 'カタログクラスの選択は必須です。';
    $Self->{Translation}->{'Add a state transition'} = '状態遷移を追加';
    $Self->{Translation}->{'Catalog Class'} = 'カタログ・クラス';
    $Self->{Translation}->{'Object Name'} = 'オブジェクト名';
    $Self->{Translation}->{'Overview over state transitions for'} = 'ステータスの概要：';
    $Self->{Translation}->{'Delete this state transition'} = '';
    $Self->{Translation}->{'Add a new state transition for'} = '新しいステータスを追加：';
    $Self->{Translation}->{'Please select a state!'} = '状態を選択してください。';
    $Self->{Translation}->{'Please select a next state!'} = '新しい状態を選択してください。';
    $Self->{Translation}->{'Edit a state transition for'} = 'ステータスの編集：';
    $Self->{Translation}->{'Do you really want to delete the state transition'} = 'ステータスを削除しますか？';
    $Self->{Translation}->{'from'} = '';

    # Template: AgentITSMChangeAdd
    $Self->{Translation}->{'Add Change'} = '';
    $Self->{Translation}->{'ITSM Change'} = '';
    $Self->{Translation}->{'Justification'} = '';
    $Self->{Translation}->{'Input invalid.'} = '';
    $Self->{Translation}->{'Impact'} = '';
    $Self->{Translation}->{'Requested Date'} = '';

    # Template: AgentITSMChangeAddFromTemplate
    $Self->{Translation}->{'Select Change Template'} = '';
    $Self->{Translation}->{'Time type'} = '';
    $Self->{Translation}->{'Invalid time type.'} = '';
    $Self->{Translation}->{'New time'} = '';

    # Template: AgentITSMChangeCABTemplate
    $Self->{Translation}->{'Save Change CAB as template'} = '';
    $Self->{Translation}->{'go to involved persons screen'} = '';
    $Self->{Translation}->{'This field is required'} = '';
    $Self->{Translation}->{'Invalid Name'} = '';

    # Template: AgentITSMChangeCondition
    $Self->{Translation}->{'Conditions and Actions'} = '';
    $Self->{Translation}->{'Delete Condition'} = '';
    $Self->{Translation}->{'Add new condition'} = '';

    # Template: AgentITSMChangeConditionEdit
    $Self->{Translation}->{'Need a valid name.'} = '';
    $Self->{Translation}->{'A a valid name is needed.'} = '';
    $Self->{Translation}->{'Duplicate name:'} = '';
    $Self->{Translation}->{'This name is already used by another condition.'} = '';
    $Self->{Translation}->{'Matching'} = '';
    $Self->{Translation}->{'Any expression (OR)'} = '';
    $Self->{Translation}->{'All expressions (AND)'} = '';
    $Self->{Translation}->{'Expressions'} = '';
    $Self->{Translation}->{'Selector'} = '';
    $Self->{Translation}->{'Operator'} = '';
    $Self->{Translation}->{'Delete Expression'} = '';
    $Self->{Translation}->{'No Expressions found.'} = '';
    $Self->{Translation}->{'Add new expression'} = '';
    $Self->{Translation}->{'Delete Action'} = '';
    $Self->{Translation}->{'No Actions found.'} = '';
    $Self->{Translation}->{'Add new action'} = '';

    # Template: AgentITSMChangeDelete
    $Self->{Translation}->{'Do you really want to delete this change?'} = '';

    # Template: AgentITSMChangeHistory
    $Self->{Translation}->{'Workorder'} = '作業オーダー';
    $Self->{Translation}->{'Show details'} = '詳細を表示';
    $Self->{Translation}->{'Show workorder'} = '作業オーダーを表示';

    # Template: AgentITSMChangeHistoryZoom
    $Self->{Translation}->{'Detailed history information of'} = '詳細な履歴情報：';
    $Self->{Translation}->{'Modified'} = '';
    $Self->{Translation}->{'Old Value'} = '古い値';
    $Self->{Translation}->{'New Value'} = '新しい値';

    # Template: AgentITSMChangeInvolvedPersons
    $Self->{Translation}->{'Involved Persons'} = '関係者';
    $Self->{Translation}->{'ChangeManager'} = '変更マネージャ';
    $Self->{Translation}->{'User invalid.'} = '不正なユーザ';
    $Self->{Translation}->{'ChangeBuilder'} = '変更実施者';
    $Self->{Translation}->{'Change Advisory Board'} = '諮問委員を変更';
    $Self->{Translation}->{'CAB Template'} = 'CABテンプレート';
    $Self->{Translation}->{'Apply Template'} = 'テンプレートを適用';
    $Self->{Translation}->{'NewTemplate'} = '新テンプレート';
    $Self->{Translation}->{'Save this CAB as template'} = 'このCABをテンプレートとして保存する';
    $Self->{Translation}->{'Add to CAB'} = 'CABに追加する';
    $Self->{Translation}->{'Invalid User'} = '不正なユーザ';
    $Self->{Translation}->{'Current CAB'} = '現在のCAB';

    # Template: AgentITSMChangeOverviewNavBar
    $Self->{Translation}->{'Context Settings'} = '';
    $Self->{Translation}->{'Changes per page'} = '';

    # Template: AgentITSMChangeOverviewSmall
    $Self->{Translation}->{'WorkOrderTitle'} = '業務指示名';
    $Self->{Translation}->{'ChangeTitle'} = '変更名';
    $Self->{Translation}->{'WorkOrderAgent'} = '業務指示者';
    $Self->{Translation}->{'Workorders'} = '業務指示';
    $Self->{Translation}->{'ChangeState'} = '変更状況';
    $Self->{Translation}->{'WorkOrderState'} = '業務指示の状態';
    $Self->{Translation}->{'WorkOrderType'} = '';
    $Self->{Translation}->{'Requested Time'} = '';
    $Self->{Translation}->{'PlannedStartTime'} = '予定開始時刻';
    $Self->{Translation}->{'PlannedEndTime'} = '予定終了日時';
    $Self->{Translation}->{'ActualStartTime'} = '実績開始時刻';
    $Self->{Translation}->{'ActualEndTime'} = '実績終了日時';

    # Template: AgentITSMChangePrint
    $Self->{Translation}->{'ITSM Workorder'} = '';

    # Template: AgentITSMChangeReset
    $Self->{Translation}->{'Do you really want to reset this change?'} = '';

    # Template: AgentITSMChangeSearch
    $Self->{Translation}->{'(e.g. 10*5155 or 105658*)'} = '';
    $Self->{Translation}->{'CABAgent'} = '';
    $Self->{Translation}->{'e.g.'} = '';
    $Self->{Translation}->{'CABCustomer'} = '';
    $Self->{Translation}->{'Instruction'} = '';
    $Self->{Translation}->{'Report'} = '';
    $Self->{Translation}->{'Change Category'} = '';
    $Self->{Translation}->{'(before/after)'} = '';
    $Self->{Translation}->{'(between)'} = '';

    # Template: AgentITSMChangeSearchResultPrint
    $Self->{Translation}->{'WorkOrders'} = '';

    # Template: AgentITSMChangeTemplate
    $Self->{Translation}->{'Save Change as Template'} = '';
    $Self->{Translation}->{'A template should have a name!'} = '';
    $Self->{Translation}->{'The template name is required.'} = '';
    $Self->{Translation}->{'Reset States'} = '';
    $Self->{Translation}->{'Overwrite original template'} = '';
    $Self->{Translation}->{'Delete original change'} = '';

    # Template: AgentITSMChangeTimeSlot
    $Self->{Translation}->{'Move Time Slot'} = '';

    # Template: AgentITSMChangeZoom
    $Self->{Translation}->{'Change Information'} = '変更情報';
    $Self->{Translation}->{'PlannedEffort'} = '計画的な取り組み';
    $Self->{Translation}->{'Change Initiator(s)'} = 'イニシエータを変更';
    $Self->{Translation}->{'Change Manager'} = 'マネージャーを変更';
    $Self->{Translation}->{'Change Builder'} = 'ビルダーを変更';
    $Self->{Translation}->{'CAB'} = '変更承認者';
    $Self->{Translation}->{'Last changed'} = '最終変更時刻';
    $Self->{Translation}->{'Last changed by'} = '最終変更者';
    $Self->{Translation}->{'Ok'} = '';
    $Self->{Translation}->{'Download Attachment'} = '添付ファイルのダウンロード';

    # Template: AgentITSMTemplateDelete
    $Self->{Translation}->{'Do you really want to delete this template?'} = '';

    # Template: AgentITSMTemplateEditCAB
    $Self->{Translation}->{'Edit CAB Template'} = '';

    # Template: AgentITSMTemplateEditContent
    $Self->{Translation}->{'This will create a new change from this template, so you can edit and save it.'} =
        '';
    $Self->{Translation}->{'The new change will be deleted automatically after it has been saved as template.'} =
        '';
    $Self->{Translation}->{'This will create a new workorder from this template, so you can edit and save it.'} =
        '';
    $Self->{Translation}->{'A temporary change will be created which contains the workorder.'} =
        '';
    $Self->{Translation}->{'The temporary change and new workorder will be deleted automatically after the workorder has been saved as template.'} =
        '';
    $Self->{Translation}->{'Do you want to proceed?'} = '';

    # Template: AgentITSMTemplateOverviewSmall
    $Self->{Translation}->{'TemplateID'} = '';
    $Self->{Translation}->{'Edit Content'} = '';
    $Self->{Translation}->{'CreateBy'} = '変更作成者';
    $Self->{Translation}->{'CreateTime'} = '変更作成日時';
    $Self->{Translation}->{'ChangeBy'} = '';
    $Self->{Translation}->{'ChangeTime'} = '';
    $Self->{Translation}->{'Edit Template Content'} = '';
    $Self->{Translation}->{'Delete Template'} = '';

    # Template: AgentITSMWorkOrderAdd
    $Self->{Translation}->{'Add Workorder to'} = '';
    $Self->{Translation}->{'Invalid workorder type.'} = '';
    $Self->{Translation}->{'The planned start time must be before the planned end time!'} = '';
    $Self->{Translation}->{'Invalid format.'} = '';

    # Template: AgentITSMWorkOrderAddFromTemplate
    $Self->{Translation}->{'Select Workorder Template'} = '';

    # Template: AgentITSMWorkOrderDelete
    $Self->{Translation}->{'Do you really want to delete this workorder?'} = '';
    $Self->{Translation}->{'You can not delete this Workorder. It is used in at least one Condition!'} =
        '';
    $Self->{Translation}->{'This Workorder is used in the following Condition(s)'} = '';

    # Template: AgentITSMWorkOrderEdit
    $Self->{Translation}->{'Move following workorders accordingly'} = '';
    $Self->{Translation}->{'If the planned end time of this workorder is changed, the planned start times of all following workorders will be changed accordingly'} =
        '';

    # Template: AgentITSMWorkOrderReport
    $Self->{Translation}->{'The actual start time must be before the actual end time!'} = '';
    $Self->{Translation}->{'The actual start time must be set, when the actual end time is set!'} =
        '';

    # Template: AgentITSMWorkOrderTake
    $Self->{Translation}->{'Current Agent'} = '';
    $Self->{Translation}->{'Do you really want to take this workorder?'} = '';

    # Template: AgentITSMWorkOrderTemplate
    $Self->{Translation}->{'Save Workorder as Template'} = '';
    $Self->{Translation}->{'Delete original workorder (and surrounding change)'} = '';

    # Template: AgentITSMWorkOrderZoom
    $Self->{Translation}->{'Workorder Information'} = '';

    # SysConfig
    $Self->{Translation}->{'A list of the agents who have permission to take workorders. Key is a login name. Content is 0 or 1.'} =
        '';
    $Self->{Translation}->{'A list of workorder states, at which the ActualStartTime of a workorder will be set if it was empty at this point.'} =
        '';
    $Self->{Translation}->{'Admin of notification rules.'} = '';
    $Self->{Translation}->{'Admin of the CIP matrix.'} = '';
    $Self->{Translation}->{'Admin of the state machine.'} = '';
    $Self->{Translation}->{'Agent interface notification module to see the number of change advisory boards.'} =
        '';
    $Self->{Translation}->{'Agent interface notification module to see the number of changes managed by the user.'} =
        '';
    $Self->{Translation}->{'Agent interface notification module to see the number of changes.'} =
        '';
    $Self->{Translation}->{'Agent interface notification module to see the number of work orders.'} =
        '';
    $Self->{Translation}->{'Cache time in minutes for the change management toolbars. Default: 3 hours (180 minutes).'} =
        '';
    $Self->{Translation}->{'Cache time in minutes for the change management. Default: 5 days (7200 minutes).'} =
        '';
    $Self->{Translation}->{'Change Overview "Small" Limit'} = '';
    $Self->{Translation}->{'Change and WorkOrder templates edited by this user.'} = '';
    $Self->{Translation}->{'Change limit per page for Change Overview "Small"'} = '変更管理一覧(S)での1ページ毎の表示数';
    $Self->{Translation}->{'Change search backend router of the agent interface.'} = '';
    $Self->{Translation}->{'Configures how often the notifications are sent when planned the start time or other time values have been reached/passed.'} =
        '';
    $Self->{Translation}->{'Default type for a workorder. This entry must exist in general catalog class \'ITSM::ChangeManagement::WorkOrder::Type\'.'} =
        '';
    $Self->{Translation}->{'Define the signals for each workorder state.'} = '';
    $Self->{Translation}->{'Defines an overview module to show the small view of a change list.'} =
        '';
    $Self->{Translation}->{'Defines an overview module to show the small view of a template list.'} =
        '';
    $Self->{Translation}->{'Defines if it will be possible to print the accounted time.'} = '';
    $Self->{Translation}->{'Defines if it will be possible to print the planned effort.'} = '';
    $Self->{Translation}->{'Defines if reachable (as defined by the state machine) change end states should be allowed if a change is in a locked state.'} =
        '';
    $Self->{Translation}->{'Defines if reachable (as defined by the state machine) workorder end states should be allowed if a workorder is in a locked state.'} =
        '';
    $Self->{Translation}->{'Defines if the accounted time should be shown.'} = '';
    $Self->{Translation}->{'Defines if the actual start and end times should be set.'} = '';
    $Self->{Translation}->{'Defines if the change search and the workorder search functions could use the mirror DB.'} =
        '';
    $Self->{Translation}->{'Defines if the change state can be set in AgentITSMChangeEdit.'} =
        '';
    $Self->{Translation}->{'Defines if the planned effort should be shown.'} = '';
    $Self->{Translation}->{'Defines if the requested date should be print by customer.'} = '';
    $Self->{Translation}->{'Defines if the requested date should be searched by customer.'} =
        '';
    $Self->{Translation}->{'Defines if the requested date should be set by customer.'} = '';
    $Self->{Translation}->{'Defines if the requested date should be shown by customer.'} = '';
    $Self->{Translation}->{'Defines if the workorder state should be shown.'} = '';
    $Self->{Translation}->{'Defines if the workorder title should be shown.'} = '';
    $Self->{Translation}->{'Defines shown graph attributes.'} = '';
    $Self->{Translation}->{'Defines that only changes containing Workorders linked with services, which the customer user has permission to use will be shown. Any other changes will not be displayed.'} =
        '';
    $Self->{Translation}->{'Defines the change states that will be allowed to delete.'} = '';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the Change PSA overview.'} =
        '';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the Change Schedule overview.'} =
        '';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the MyCAB overview.'} =
        '';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the MyChanges overview.'} =
        '';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the change manager overview.'} =
        '';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the change overview.'} =
        '';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the customer change schedule overview.'} =
        '';
    $Self->{Translation}->{'Defines the default change title for a dummy change which is needed to edit a workorder template.'} =
        '';
    $Self->{Translation}->{'Defines the default sort criteria in the change PSA overview.'} =
        '';
    $Self->{Translation}->{'Defines the default sort criteria in the change manager overview.'} =
        '';
    $Self->{Translation}->{'Defines the default sort criteria in the change overview.'} = '';
    $Self->{Translation}->{'Defines the default sort criteria in the change schedule overview.'} =
        '';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyCAB overview.'} =
        '';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyChanges overview.'} =
        '';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyWorkorders overview.'} =
        '';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the PIR overview.'} =
        '';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the customer change schedule overview.'} =
        '';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the template overview.'} =
        '';
    $Self->{Translation}->{'Defines the default sort order in the MyCAB overview.'} = '';
    $Self->{Translation}->{'Defines the default sort order in the MyChanges overview.'} = '';
    $Self->{Translation}->{'Defines the default sort order in the MyWorkorders overview.'} =
        '';
    $Self->{Translation}->{'Defines the default sort order in the PIR overview.'} = '';
    $Self->{Translation}->{'Defines the default sort order in the change PSA overview.'} = '';
    $Self->{Translation}->{'Defines the default sort order in the change manager overview.'} =
        '';
    $Self->{Translation}->{'Defines the default sort order in the change overview.'} = '';
    $Self->{Translation}->{'Defines the default sort order in the change schedule overview.'} =
        '';
    $Self->{Translation}->{'Defines the default sort order in the customer change schedule overview.'} =
        '';
    $Self->{Translation}->{'Defines the default sort order in the template overview.'} = '';
    $Self->{Translation}->{'Defines the default value for the category of a change.'} = '';
    $Self->{Translation}->{'Defines the default value for the impact of a change.'} = '';
    $Self->{Translation}->{'Defines the field type of CompareValue fields for change attributes used in AgentITSMChangeConditionEdit. Valid values are Selection, Text and Date. If a type is not defined, the field will not be shown.'} =
        '';
    $Self->{Translation}->{'Defines the field type of CompareValue fields for workorder attributes used in AgentITSMChangeConditionEdit. Valid values are Selection, Text and Date. If a type is not defined, the field will not be shown.'} =
        '';
    $Self->{Translation}->{'Defines the object attributes that are selectable for change objects in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the object attributes that are selectable for workorder objects in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute AccountedTime in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ActualEndTime in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ActualStartTime in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute CategoryID in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeBuilderID in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeManagerID in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeStateID in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeTitle in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute DynamicField in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ImpactID in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PlannedEffort in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PlannedEndTime in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PlannedStartTime in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PriorityID in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute RequestedTime in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderAgentID in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderNumber in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderStateID in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderTitle in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderTypeID in AgentITSMChangeConditionEdit.'} =
        '';
    $Self->{Translation}->{'Defines the period (in years), in which start and end times can be selected.'} =
        '';
    $Self->{Translation}->{'Defines the shown attributes of a workorder in the tooltip of the workorder graph in the change zoom. To show workorder dynamic fields in the tooltip, they must be specified like DynamicField_WorkOrderFieldName1, DynamicField_WorkOrderFieldName2, etc.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the Change PSA overview. This option has no effect on the position of the column.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the Change Schedule overview. This option has no effect on the position of the column.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the MyCAB overview. This option has no effect on the position of the column.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the MyChanges overview. This option has no effect on the position of the column.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the MyWorkorders overview. This option has no effect on the position of the column.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the PIR overview. This option has no effect on the position of the column.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the change manager overview. This option has no effect on the position of the column.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the change overview. This option has no effect on the position of the column.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the change search. This option has no effect on the position of the column.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the customer change schedule overview. This option has no effect on the position of the column.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the template overview. This option has no effect on the position of the column.'} =
        '';
    $Self->{Translation}->{'Defines the signals for each ITSMChange state.'} = '';
    $Self->{Translation}->{'Defines the template types that will be used as filters in the template overview.'} =
        '';
    $Self->{Translation}->{'Defines the workorder states that will be used as filters in the MyWorkorders overview.'} =
        '';
    $Self->{Translation}->{'Defines the workorder states that will be used as filters in the PIR overview.'} =
        '';
    $Self->{Translation}->{'Defines the workorder types that will be used to show the PIR overview.'} =
        '';
    $Self->{Translation}->{'Defines whether notifications should be sent.'} = '';
    $Self->{Translation}->{'Determines if an agent can exchange the X-axis of a stat if he generates one.'} =
        '統計軸を、担当者が新たに作成した場合は、担当者が交換できるようにします。';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes done for config item classes.'} =
        '共通統計モジュールが、構成アイテム・クラスに関して行われた変更の統計を生成してよいかどうかを定義します。';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes regarding change state updates within a timeperiod.'} =
        '共通統計モジュールが、一定期間内における変更状態アップデートに関する、変更の統計を生成してよいかどうかを定義します。';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes regarding the relation between changes and incident tickets.'} =
        '共通統計モジュールが、変更とインシデント・チケット間の関係に関する、変更の統計を生成してよいかどうかを定義します。';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes.'} =
        '共通統計モジュールが、変更の統計を生成してよいかどうかを定義します。';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about the number of Rfc tickets a requester created.'} =
        '共通統計モジュールが、リクエスター（要求者）が作成したRfcチケットの数の統計を生成してよいかどうかを定義します。';
    $Self->{Translation}->{'Dynamic fields (for changes and workorders) shown in the change print screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the change add screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the change edit screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the change search screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the change zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the workorder add screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the workorder edit screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the workorder report screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} =
        '';
    $Self->{Translation}->{'Dynamic fields shown in the workorder zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.'} =
        '';
    $Self->{Translation}->{'DynamicField event module to handle the update of conditions if dynamic fields are added, updated or deleted.'} =
        '';
    $Self->{Translation}->{'ITSM event module deletes the history of changes.'} = '';
    $Self->{Translation}->{'ITSM event module that cleans up conditions.'} = '';
    $Self->{Translation}->{'ITSM event module that deletes the cache for a toolbar.'} = '';
    $Self->{Translation}->{'ITSM event module that matches conditions and executes actions.'} =
        '';
    $Self->{Translation}->{'ITSM event module that sends notifications.'} = '';
    $Self->{Translation}->{'ITSM event module that updates the history of changes.'} = '';
    $Self->{Translation}->{'ITSM event module to recalculate the workorder numbers.'} = '';
    $Self->{Translation}->{'ITSM event module to set the actual start and end times of workorders.'} =
        '';
    $Self->{Translation}->{'ITSM event module updates the history of changes.'} = '';
    $Self->{Translation}->{'ITSM event module updates the history of conditions.'} = '';
    $Self->{Translation}->{'ITSM event module updates the history of workorders.'} = '';
    $Self->{Translation}->{'If frequency is \'regularly\', you can configure how often the notications are sent (every X hours).'} =
        '';
    $Self->{Translation}->{'Logfile for the ITSM change counter. This file is used for creating the change numbers.'} =
        '';
    $Self->{Translation}->{'Module to check if WorkOrderAdd or WorkOrderAddFromTemplate should be permitted.'} =
        '';
    $Self->{Translation}->{'Module to check the CAB members.'} = '';
    $Self->{Translation}->{'Module to check the agent.'} = '';
    $Self->{Translation}->{'Module to check the change builder.'} = '';
    $Self->{Translation}->{'Module to check the change manager.'} = '';
    $Self->{Translation}->{'Module to check the workorder agent.'} = '';
    $Self->{Translation}->{'Module to check whether no workorder agent is set.'} = '';
    $Self->{Translation}->{'Module to check whether the agent is contained in the configured list.'} =
        '';
    $Self->{Translation}->{'Module to show a link to create a change from this ticket. The ticket will be automatically linked with the new change.'} =
        'このチケットから変更を作成するためのリンクを表示させるモジュールです。チケットは、自動的に新しい変更とリンクされます。';
    $Self->{Translation}->{'Notification (ITSM Change Management)'} = '通知（ITSM変更管理）';
    $Self->{Translation}->{'Only users of these groups have the permission to use the ticket types as defined in "ITSMChange::AddChangeLinkTicketTypes" if the feature "Ticket::Acl::Module###200-Ticket::Acl::Module" is enabled.'} =
        '';
    $Self->{Translation}->{'Parameters for the UserCreateWorkOrderNextMask object in the preference view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Parameters for the pages (in which the changes are shown) of the small change overview.'} =
        '';
    $Self->{Translation}->{'Presents a link in the menu to show the involved persons in a change, in the zoom view of such change in the agent interface.'} =
        '';
    $Self->{Translation}->{'Required privileges in order for an agent to take a workorder.'} =
        '';
    $Self->{Translation}->{'Required privileges to access the overview of all changes.'} = '';
    $Self->{Translation}->{'Required privileges to add a workorder.'} = '';
    $Self->{Translation}->{'Required privileges to change the workorder agent.'} = '';
    $Self->{Translation}->{'Required privileges to create a template from a change.'} = '';
    $Self->{Translation}->{'Required privileges to create a template from a changes\' CAB.'} =
        '';
    $Self->{Translation}->{'Required privileges to create a template from a workorder.'} = '';
    $Self->{Translation}->{'Required privileges to create changes from templates.'} = '';
    $Self->{Translation}->{'Required privileges to create changes.'} = '';
    $Self->{Translation}->{'Required privileges to delete a template.'} = '';
    $Self->{Translation}->{'Required privileges to delete a workorder.'} = '';
    $Self->{Translation}->{'Required privileges to delete changes.'} = '';
    $Self->{Translation}->{'Required privileges to edit a template.'} = '';
    $Self->{Translation}->{'Required privileges to edit a workorder.'} = '';
    $Self->{Translation}->{'Required privileges to edit changes.'} = '';
    $Self->{Translation}->{'Required privileges to edit the conditions of changes.'} = '';
    $Self->{Translation}->{'Required privileges to edit the content of a template.'} = '';
    $Self->{Translation}->{'Required privileges to edit the involved persons of a change.'} =
        '';
    $Self->{Translation}->{'Required privileges to move changes in time.'} = '';
    $Self->{Translation}->{'Required privileges to print a change.'} = '';
    $Self->{Translation}->{'Required privileges to reset changes.'} = '';
    $Self->{Translation}->{'Required privileges to view a workorder.'} = '';
    $Self->{Translation}->{'Required privileges to view changes.'} = '';
    $Self->{Translation}->{'Required privileges to view list of changes where the user is a CAB member.'} =
        '';
    $Self->{Translation}->{'Required privileges to view list of changes where the user is the change manager.'} =
        '';
    $Self->{Translation}->{'Required privileges to view overview over all templates.'} = '';
    $Self->{Translation}->{'Required privileges to view the conditions of changes.'} = '';
    $Self->{Translation}->{'Required privileges to view the history of a change.'} = '';
    $Self->{Translation}->{'Required privileges to view the history of a workorder.'} = '';
    $Self->{Translation}->{'Required privileges to view the history zoom of a change.'} = '';
    $Self->{Translation}->{'Required privileges to view the history zoom of a workorder.'} =
        '';
    $Self->{Translation}->{'Required privileges to view the list of Change Schedule.'} = '';
    $Self->{Translation}->{'Required privileges to view the list of change PSA.'} = '';
    $Self->{Translation}->{'Required privileges to view the list of changes with an upcoming PIR (Post Implementation Review).'} =
        '';
    $Self->{Translation}->{'Required privileges to view the list of own changes.'} = '';
    $Self->{Translation}->{'Required privileges to view the list of own workorders.'} = '';
    $Self->{Translation}->{'Required privileges to write a report for the workorder.'} = '';
    $Self->{Translation}->{'Screen after creating a workorder'} = '';
    $Self->{Translation}->{'Selects the change number generator module. "AutoIncrement" increments the change number, the SystemID and the counter are used with SystemID.counter format (e.g. 100118, 100119). With "Date", the change numbers will be generated by the current date and a counter; this format looks like Year.Month.Day.counter, e.g. 2010062400001, 2010062400002. With "DateChecksum", the counter will be appended as checksum to the string of date plus the SystemID. The checksum will be rotated on a daily basis. This format looks like Year.Month.Day.SystemID.Counter.CheckSum, e.g. 2010062410000017, 2010062410000026.'} =
        '';
    $Self->{Translation}->{'Sets the minimal change counter size (if "AutoIncrement" was selected as ITSMChange::NumberGenerator). Default is 5, this means the counter starts from 10000.'} =
        '';
    $Self->{Translation}->{'Sets up the state machine for changes.'} = '';
    $Self->{Translation}->{'Sets up the state machine for workorders.'} = '';
    $Self->{Translation}->{'Show this screen after I created a new workorder'} = '';
    $Self->{Translation}->{'Shows a checkbox in the AgentITSMWorkOrderEdit screen that defines if the the following workorders should also be moved if a workorder is modified and the planned end time has changed.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows changing the work order agent, in the zoom view of such work order of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows defining a change as a template in the zoom view of the change, in the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows defining a work order as a template in the zoom view of the work order, in the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows editing the report of a workd order, in the zoom view of such work order of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows linking a change with another object in the change zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows linking a work order with another object in the zoom view of such work order of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows moving the time slot of a change in its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows taking a work order in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to access the conditions of a change in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to access the history of a change in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to access the history of a work order in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to add a work order in the change zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to delete a change in its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to delete a work order in its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to edit a change in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to edit a work order in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to go back in the change zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to go back in the work order zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to print a change in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to print a work order in the its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to reset a change and its workorders in its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows the change history (reverse ordered) in the agent interface.'} =
        '';
    $Self->{Translation}->{'State Machine'} = '';
    $Self->{Translation}->{'Stores change and workorder ids and their corresponding template id, while a user is editing a template.'} =
        '';
    $Self->{Translation}->{'The identifier for a change, e.g. Change#, MyChange#. The default is Change#.'} =
        '';
    $Self->{Translation}->{'The identifier for a workorder, e.g. Workorder#, MyWorkorder#. The default is Workorder#.'} =
        '';
    $Self->{Translation}->{'This ACL module restricts the usuage of the ticket types that are defined in the sysconfig option \'ITSMChange::AddChangeLinkTicketTypes\', to users of the groups as defined in "ITSMChange::RestrictTicketTypes::Groups". As this ACL could collide with other ACLs which are also related to the ticket type, this sysconfig option is disabled by default and should only be activated if needed.'} =
        '';
    $Self->{Translation}->{'Types of tickets, where in the ticket zoom view a link to add a change will be displayed.'} =
        '';

}

1;
