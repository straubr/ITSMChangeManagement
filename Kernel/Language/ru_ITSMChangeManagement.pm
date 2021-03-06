# --
# Kernel/Language/ru_ITSMChangeManagement.pm - translation file
# Copyright (C) 2001-2015 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::ru_ITSMChangeManagement;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAITSMChangeManagement
    $Self->{Translation}->{'ITSMChange'} = 'Изменение';
    $Self->{Translation}->{'ITSMChanges'} = 'Изменения';
    $Self->{Translation}->{'ITSM Changes'} = 'Изменения';
    $Self->{Translation}->{'workorder'} = 'Задача';
    $Self->{Translation}->{'A change must have a title!'} = 'Изменение должно иметь название';
    $Self->{Translation}->{'A condition must have a name!'} = 'Условие должно иметь имя';
    $Self->{Translation}->{'A template must have a name!'} = 'Шаблон должен иметь имя';
    $Self->{Translation}->{'A workorder must have a title!'} = 'Задача должна иметь название';
    $Self->{Translation}->{'ActionExecute::successfully'} = 'Успешно';
    $Self->{Translation}->{'ActionExecute::unsuccessfully'} = 'Неуспешно';
    $Self->{Translation}->{'Add CAB Template'} = 'Добавить шаблон для CAB';
    $Self->{Translation}->{'Add Workorder'} = 'Добавить задачу';
    $Self->{Translation}->{'Add a workorder to the change'} = 'Добавить задачу к изменению';
    $Self->{Translation}->{'Add new condition and action pair'} = 'Добавить новую пару условие-действие';
    $Self->{Translation}->{'Agent interface module to show the ChangeManager overview icon.'} =
        'Модуль интерфейса агента отображающий иконку обзора ChangeManager';
    $Self->{Translation}->{'Agent interface module to show the MyCAB overview icon.'} = 'Модуль интерфейса агента отображающий иконку обзора Мои CAB';
    $Self->{Translation}->{'Agent interface module to show the MyChanges overview icon.'} = 'Модуль интерфейса агента отображающий иконку обзора Мои изменения';
    $Self->{Translation}->{'Agent interface module to show the MyWorkOrders overview icon.'} =
        'Модуль интерфейса агента отображающий иконку обзора Мои задачи';
    $Self->{Translation}->{'CABAgents'} = 'агенты в CAB';
    $Self->{Translation}->{'CABCustomers'} = 'клиенты в CAB';
    $Self->{Translation}->{'Change Overview'} = 'Обзор изменений';
    $Self->{Translation}->{'Change Schedule'} = 'Планировщик изменений';
    $Self->{Translation}->{'Change involved persons of the change'} = 'Изменить список вовлеченных участников изменения';
    $Self->{Translation}->{'ChangeHistory::ActionAdd'} = '%s: %s';
    $Self->{Translation}->{'ChangeHistory::ActionAddID'} = 'Новое действие (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ActionDelete'} = 'Действие (ID=%s) удалено';
    $Self->{Translation}->{'ChangeHistory::ActionDeleteAll'} = 'Все действия и условия (ID=%s) удалены';
    $Self->{Translation}->{'ChangeHistory::ActionExecute'} = 'Действие (ID=%s) выполняется: %s';
    $Self->{Translation}->{'ChangeHistory::ActionUpdate'} = '%s (Действие ID=%s): Новое: %s <- Старое: %s';
    $Self->{Translation}->{'ChangeHistory::ChangeActualEndTimeReached'} = 'Изменение (ID=%s) достигло фактического времени окончания.';
    $Self->{Translation}->{'ChangeHistory::ChangeActualStartTimeReached'} = 'Изменение (ID=%s) достигло фактического времени начала.';
    $Self->{Translation}->{'ChangeHistory::ChangeAdd'} = 'Новое изменение (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ChangeAttachmentAdd'} = 'Новое вложение: %s';
    $Self->{Translation}->{'ChangeHistory::ChangeAttachmentDelete'} = 'Удаленные вложения %s';
    $Self->{Translation}->{'ChangeHistory::ChangeCABDelete'} = 'CAB удален %s';
    $Self->{Translation}->{'ChangeHistory::ChangeCABUpdate'} = 'CAB %s: Новый: %s <- Старый: %s';
    $Self->{Translation}->{'ChangeHistory::ChangeLinkAdd'} = 'Связь %s (ID=%s) добавлена';
    $Self->{Translation}->{'ChangeHistory::ChangeLinkDelete'} = 'Связь для %s (ID=%s) удалена';
    $Self->{Translation}->{'ChangeHistory::ChangeNotificationSent'} = 'Уведомление отправлено %s (Событие: %s)';
    $Self->{Translation}->{'ChangeHistory::ChangePlannedEndTimeReached'} = 'Изменение (ID=%s) достигло запланированного времени окончания.';
    $Self->{Translation}->{'ChangeHistory::ChangePlannedStartTimeReached'} = 'Изменение (ID=%s) достигло запланированного времени начала.';
    $Self->{Translation}->{'ChangeHistory::ChangeRequestedTimeReached'} = 'Изменение (ID=%s) достигло заданного срока.';
    $Self->{Translation}->{'ChangeHistory::ChangeUpdate'} = '%s: Новое: %s <- Старое: %s';
    $Self->{Translation}->{'ChangeHistory::ConditionAdd'} = '%s: %s';
    $Self->{Translation}->{'ChangeHistory::ConditionAddID'} = 'Новое условие (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ConditionDelete'} = 'Условие (ID=%s) удалено';
    $Self->{Translation}->{'ChangeHistory::ConditionDeleteAll'} = 'Все условия изменения (ID=%s) удалены';
    $Self->{Translation}->{'ChangeHistory::ConditionUpdate'} = '%s (Условие ID=%s): Новое: %s <- Старое: %s';
    $Self->{Translation}->{'ChangeHistory::ExpressionAdd'} = '%s: %s';
    $Self->{Translation}->{'ChangeHistory::ExpressionAddID'} = 'Новое выражение (ID=%s)';
    $Self->{Translation}->{'ChangeHistory::ExpressionDelete'} = 'Выражение (ID=%s) удалено';
    $Self->{Translation}->{'ChangeHistory::ExpressionDeleteAll'} = 'Все выражения условия (ID=%s) удалены';
    $Self->{Translation}->{'ChangeHistory::ExpressionUpdate'} = '%s (Выражение ID=%s): Новое: %s <- Старое: %s';
    $Self->{Translation}->{'ChangeNumber'} = 'Номер изменения';
    $Self->{Translation}->{'Condition Edit'} = 'Редактировать условие';
    $Self->{Translation}->{'Create Change'} = 'Создать изменение';
    $Self->{Translation}->{'Create a change from this ticket!'} = 'Создать изменение из этой заявки!';
    $Self->{Translation}->{'Delete Workorder'} = 'Удалить задачу';
    $Self->{Translation}->{'Edit the change'} = 'Редактировать изменение';
    $Self->{Translation}->{'Edit the conditions of the change'} = 'Редактировать условия изменения';
    $Self->{Translation}->{'Edit the workorder'} = 'Редактировать задачу';
    $Self->{Translation}->{'Expression'} = 'Выражение';
    $Self->{Translation}->{'Full-Text Search in Change and Workorder'} = 'Полнотекстовый поиск в изменении и задаче';
    $Self->{Translation}->{'ITSMCondition'} = 'Условие';
    $Self->{Translation}->{'ITSMWorkOrder'} = 'Задача';
    $Self->{Translation}->{'Link another object to the change'} = 'Связать другой объект с изменением';
    $Self->{Translation}->{'Link another object to the workorder'} = 'Связать другой объект с задачей';
    $Self->{Translation}->{'Move all workorders in time'} = 'Переместить все задачи во времени';
    $Self->{Translation}->{'My CABs'} = 'Мои CAB';
    $Self->{Translation}->{'My Changes'} = 'Мои изменения';
    $Self->{Translation}->{'My Workorders'} = 'Мои задачи';
    $Self->{Translation}->{'No XXX settings'} = 'Нет \'%s\' параметров';
    $Self->{Translation}->{'PIR (Post Implementation Review)'} = 'PIR (Post Implementation Review/Анализ после выполнения)';
    $Self->{Translation}->{'PSA (Projected Service Availability)'} = 'PSA (Projected Service Availability/Проектируемая доступность сервиса)';
    $Self->{Translation}->{'Please select first a catalog class!'} = 'Пожалуйста, сначала выберите класс каталога';
    $Self->{Translation}->{'Print the change'} = 'Печать изменения';
    $Self->{Translation}->{'Print the workorder'} = 'Печать задачи';
    $Self->{Translation}->{'RequestedTime'} = 'Запрошенное время';
    $Self->{Translation}->{'Save Change CAB as Template'} = 'Сохранить состав CAB для изменения как шаблон';
    $Self->{Translation}->{'Save change as a template'} = 'Сохранить изменение как шаблон';
    $Self->{Translation}->{'Save workorder as a template'} = 'Сохранить задачу как шаблон';
    $Self->{Translation}->{'Search Changes'} = 'Поиск изменений';
    $Self->{Translation}->{'Set the agent for the workorder'} = 'Назначит агента для задачи';
    $Self->{Translation}->{'Take Workorder'} = 'Взять задачу';
    $Self->{Translation}->{'Take the workorder'} = 'Взять задачу';
    $Self->{Translation}->{'Template Overview'} = 'Обзор шаблонов';
    $Self->{Translation}->{'The planned end time is invalid!'} = 'Запланированное время окончания неверно!';
    $Self->{Translation}->{'The planned start time is invalid!'} = 'Запланированное время начала неверно!';
    $Self->{Translation}->{'The planned time is invalid!'} = 'Планоый срок неверен!';
    $Self->{Translation}->{'The requested time is invalid!'} = 'Запрашиваемое время неверно!';
    $Self->{Translation}->{'New (from template)'} = 'Новое(ая) из шаблона';
    $Self->{Translation}->{'Add from template'} = 'Добавить, используя шаблон';
    $Self->{Translation}->{'Add Workorder (from template)'} = 'Добавить задачу ( используя шаблон)';
    $Self->{Translation}->{'Add a workorder (from template) to the change'} = 'Добавить задачу к изменению (используя шаблон)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderActualEndTimeReached'} = 'Задача (ID=%s) достигла фактического времени окончания.';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderActualEndTimeReachedWithWorkOrderID'} =
        'Задача (ID=%s) достигла фактического времени окончания.';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderActualStartTimeReached'} = 'Задача (ID=%s) достигла фактического времени начала.';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderActualStartTimeReachedWithWorkOrderID'} =
        'Задача (ID=%s) достигла фактического времени начала.';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderAdd'} = 'Новая задача (ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderAddWithWorkOrderID'} = 'Новая задача (ID=%s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderAttachmentAdd'} = 'Новое вложение для задачи: %s';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderAttachmentAddWithWorkOrderID'} = '(ID=%s) Новое вложение из задачи: %s';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderAttachmentDelete'} = 'Удаленное вложение для задачи: %s';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderAttachmentDeleteWithWorkOrderID'} = '(ID=%s) Удаленное вложение из задачи: %s';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderReportAttachmentAdd'} = 'Новый вложенный отчет для задачи: %s';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderReportAttachmentAddWithWorkOrderID'} =
        '(ID=%s) Новый вложенный отчет для задачи: %s';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderReportAttachmentDelete'} = 'Удаленный вложенный отчет из задачи: %s';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderReportAttachmentDeleteWithWorkOrderID'} =
        '(ID=%s) Удаленный вложенный отчет из задачи: %s';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderDelete'} = 'Задача (ID=%s) удалена';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderDeleteWithWorkOrderID'} = 'Задача (ID=%s) удалена';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderLinkAdd'} = 'Связь для %s (ID=%s) добавлена';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderLinkAddWithWorkOrderID'} = '(ID=%s) Связь для %s (ID=%s) добавлена';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderLinkDelete'} = 'Связь для %s (ID=%s) удалена';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderLinkDeleteWithWorkOrderID'} = '(ID=%s) Связь для %s (ID=%s) удалена';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderNotificationSent'} = 'Уведомление отправлено %s (Событие: %s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderNotificationSentWithWorkOrderID'} = '(ID=%s) Уведомление отправлено %s (Событие: %s)';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderPlannedEndTimeReached'} = 'Задача (ID=%s) достигла запланированного времени окончания.';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderPlannedEndTimeReachedWithWorkOrderID'} =
        'достигла запланированного времени окончания.';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderPlannedStartTimeReached'} = 'Задача (ID=%s) достигла запланированного времени начала';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderPlannedStartTimeReachedWithWorkOrderID'} =
        'Задача (ID=%s) достигла запланированного времени начала.';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderUpdate'} = '%s: Новая: %s <- Старая: %s';
    $Self->{Translation}->{'WorkOrderHistory::WorkOrderUpdateWithWorkOrderID'} = '(ID=%s) %s: Новая: %s <- Старая: %s';
    $Self->{Translation}->{'WorkOrderNumber'} = 'Номер задачи';
    $Self->{Translation}->{'accepted'} = 'Принято';
    $Self->{Translation}->{'any'} = 'любой(ая)';
    $Self->{Translation}->{'approval'} = 'Утверждение';
    $Self->{Translation}->{'approved'} = 'Утверждено';
    $Self->{Translation}->{'backout'} = 'План отката';
    $Self->{Translation}->{'begins with'} = 'начать с';
    $Self->{Translation}->{'canceled'} = 'отменено';
    $Self->{Translation}->{'contains'} = 'содержит';
    $Self->{Translation}->{'created'} = 'создано(а)';
    $Self->{Translation}->{'decision'} = 'решение';
    $Self->{Translation}->{'ends with'} = 'окончить с';
    $Self->{Translation}->{'failed'} = 'не удалось';
    $Self->{Translation}->{'in progress'} = 'в работе';
    $Self->{Translation}->{'is'} = 'Является';
    $Self->{Translation}->{'is after'} = 'после';
    $Self->{Translation}->{'is before'} = 'до';
    $Self->{Translation}->{'is empty'} = 'пусто';
    $Self->{Translation}->{'is greater than'} = 'больше чем';
    $Self->{Translation}->{'is less than'} = 'меньше чем';
    $Self->{Translation}->{'is not'} = 'не';
    $Self->{Translation}->{'is not empty'} = 'не пусто';
    $Self->{Translation}->{'not contains'} = 'не содержит';
    $Self->{Translation}->{'pending approval'} = 'отложенное утверждение';
    $Self->{Translation}->{'pending pir'} = 'ожидает одобрения PIR';
    $Self->{Translation}->{'pir'} = 'PIR (Post Implementation Review/анализ по окончании)';
    $Self->{Translation}->{'ready'} = 'готово';
    $Self->{Translation}->{'rejected'} = 'отвергнуто';
    $Self->{Translation}->{'requested'} = 'запрошено';
    $Self->{Translation}->{'retracted'} = 'отказано';
    $Self->{Translation}->{'set'} = 'установлено';
    $Self->{Translation}->{'successful'} = 'успешно';

    # Template: AdminITSMChangeCIPAllocate
    $Self->{Translation}->{'Category <-> Impact <-> Priority'} = 'Категория <-> Влияние <-> Приоритет';
    $Self->{Translation}->{'Manage the priority result of combinating Category <-> Impact.'} =
        'Управление приоритетом на основе комбинации Категория <-> Влияние';
    $Self->{Translation}->{'Priority allocation'} = 'Назначение приоритета';

    # Template: AdminITSMChangeNotification
    $Self->{Translation}->{'ITSM ChangeManagement Notification Management'} = 'Управление уведомлениями в ITSM ChangeManagement';
    $Self->{Translation}->{'Add Notification Rule'} = 'Добавить правило уведомления';
    $Self->{Translation}->{'Rule'} = 'Правило';
    $Self->{Translation}->{'Recipients'} = 'Получатели';
    $Self->{Translation}->{'A notification should have a name!'} = 'Уведомление должно иметь имя';
    $Self->{Translation}->{'Name is required.'} = 'Требуется имя';

    # Template: AdminITSMStateMachine
    $Self->{Translation}->{'Admin State Machine'} = 'Управление Машиной состояний';
    $Self->{Translation}->{'Select a catalog class!'} = 'Выберите класс каталога!';
    $Self->{Translation}->{'A catalog class is required!'} = 'Класс каталога обязателен!';
    $Self->{Translation}->{'Add a state transition'} = 'Добавить состояние перехода';
    $Self->{Translation}->{'Catalog Class'} = 'Класс каталога';
    $Self->{Translation}->{'Object Name'} = 'Имя объекта';
    $Self->{Translation}->{'Overview over state transitions for'} = 'Обзор состояний перехода для';
    $Self->{Translation}->{'Delete this state transition'} = 'Удалить это состояние перехода';
    $Self->{Translation}->{'Add a new state transition for'} = 'Добавить новое состояние перехода для';
    $Self->{Translation}->{'Please select a state!'} = 'Выберите состояние!';
    $Self->{Translation}->{'Please select a next state!'} = 'Выберите следующее состояние!';
    $Self->{Translation}->{'Edit a state transition for'} = 'Редактировать состояние перехода для';
    $Self->{Translation}->{'Do you really want to delete the state transition'} = 'Вы действительно хототе удалить состояние перехода';
    $Self->{Translation}->{'from'} = 'из';

    # Template: AgentITSMChangeAdd
    $Self->{Translation}->{'Add Change'} = 'Добавить изменение';
    $Self->{Translation}->{'ITSM Change'} = 'Изменение';
    $Self->{Translation}->{'Justification'} = 'Обоснование';
    $Self->{Translation}->{'Input invalid.'} = 'Неверные данные';
    $Self->{Translation}->{'Impact'} = 'Влияние';
    $Self->{Translation}->{'Requested Date'} = 'Запрошенное время';

    # Template: AgentITSMChangeAddFromTemplate
    $Self->{Translation}->{'Select Change Template'} = 'Выбрать шаблон для изменения';
    $Self->{Translation}->{'Time type'} = 'Тип времени';
    $Self->{Translation}->{'Invalid time type.'} = 'неверный тип времени.';
    $Self->{Translation}->{'New time'} = 'новое время';

    # Template: AgentITSMChangeCABTemplate
    $Self->{Translation}->{'Save Change CAB as template'} = 'Сохратиь состав CAB как шаблон';
    $Self->{Translation}->{'go to involved persons screen'} = 'перейти к экрану вовлеченных специалистов';
    $Self->{Translation}->{'This field is required'} = 'Это поле обязательно';
    $Self->{Translation}->{'Invalid Name'} = 'Неверное имя';

    # Template: AgentITSMChangeCondition
    $Self->{Translation}->{'Conditions and Actions'} = 'Условия и Действия';
    $Self->{Translation}->{'Delete Condition'} = 'Удалить условие';
    $Self->{Translation}->{'Add new condition'} = 'Добавить новое условие';

    # Template: AgentITSMChangeConditionEdit
    $Self->{Translation}->{'Need a valid name.'} = 'Требуется правильное имя';
    $Self->{Translation}->{'A a valid name is needed.'} = 'Требуется правильное имя';
    $Self->{Translation}->{'Duplicate name:'} = 'Уже используемое имя:';
    $Self->{Translation}->{'This name is already used by another condition.'} = 'Это имя уже сипользуется в другом условии.';
    $Self->{Translation}->{'Matching'} = 'Сопоставление';
    $Self->{Translation}->{'Any expression (OR)'} = 'Любое выражение (OR)';
    $Self->{Translation}->{'All expressions (AND)'} = 'Все выражения (AND)';
    $Self->{Translation}->{'Expressions'} = 'Выражения';
    $Self->{Translation}->{'Selector'} = 'Переключатель';
    $Self->{Translation}->{'Operator'} = 'Оператор';
    $Self->{Translation}->{'Delete Expression'} = 'Удалить выражение';
    $Self->{Translation}->{'No Expressions found.'} = 'Выражение не задано.';
    $Self->{Translation}->{'Add new expression'} = 'Добавитьновое выражение';
    $Self->{Translation}->{'Delete Action'} = 'Удалить действие';
    $Self->{Translation}->{'No Actions found.'} = 'Действий не задано.';
    $Self->{Translation}->{'Add new action'} = 'Добавить новое действие';

    # Template: AgentITSMChangeDelete
    $Self->{Translation}->{'Do you really want to delete this change?'} = 'Вы действительно желаете удалить это изменение?';

    # Template: AgentITSMChangeHistory
    $Self->{Translation}->{'Workorder'} = 'Задача';
    $Self->{Translation}->{'Show details'} = 'Показать подробно';
    $Self->{Translation}->{'Show workorder'} = 'Показать задачу';

    # Template: AgentITSMChangeHistoryZoom
    $Self->{Translation}->{'Detailed history information of'} = 'Детальная информация истории для';
    $Self->{Translation}->{'Modified'} = 'Изменено';
    $Self->{Translation}->{'Old Value'} = 'Старое значение';
    $Self->{Translation}->{'New Value'} = 'Новое значение';

    # Template: AgentITSMChangeInvolvedPersons
    $Self->{Translation}->{'Involved Persons'} = 'Вовлеченные сотрудники';
    $Self->{Translation}->{'ChangeManager'} = 'Менеджер изменений';
    $Self->{Translation}->{'User invalid.'} = 'Неверный исполнитель';
    $Self->{Translation}->{'ChangeBuilder'} = 'Составитель изменения';
    $Self->{Translation}->{'Change Advisory Board'} = 'CAB - Комитет по изменения';
    $Self->{Translation}->{'CAB Template'} = 'Шаблон для CAB';
    $Self->{Translation}->{'Apply Template'} = 'Применить шаблон';
    $Self->{Translation}->{'NewTemplate'} = 'Новый шаблон';
    $Self->{Translation}->{'Save this CAB as template'} = 'Сохранить состав CAB как шаблон';
    $Self->{Translation}->{'Add to CAB'} = 'Добавить к CAB';
    $Self->{Translation}->{'Invalid User'} = 'Неверный сотрудник';
    $Self->{Translation}->{'Current CAB'} = 'Текущий CAB';

    # Template: AgentITSMChangeOverviewNavBar
    $Self->{Translation}->{'Context Settings'} = 'Параметры контекста';
    $Self->{Translation}->{'Changes per page'} = 'Изменений на страницу';

    # Template: AgentITSMChangeOverviewSmall
    $Self->{Translation}->{'WorkOrderTitle'} = 'Заголовок задачи';
    $Self->{Translation}->{'ChangeTitle'} = 'Заголовок изменения';
    $Self->{Translation}->{'WorkOrderAgent'} = 'Агент для задачи';
    $Self->{Translation}->{'Workorders'} = 'Задачи';
    $Self->{Translation}->{'ChangeState'} = 'Состояние изменения';
    $Self->{Translation}->{'WorkOrderState'} = 'Состояние задачи';
    $Self->{Translation}->{'WorkOrderType'} = 'Тип задачи';
    $Self->{Translation}->{'Requested Time'} = 'Запрошенное время';
    $Self->{Translation}->{'PlannedStartTime'} = 'Запланированное время начала';
    $Self->{Translation}->{'PlannedEndTime'} = 'Запланированное время окончания';
    $Self->{Translation}->{'ActualStartTime'} = 'Фактическое время начала';
    $Self->{Translation}->{'ActualEndTime'} = 'Фактическое время окончания';

    # Template: AgentITSMChangePrint
    $Self->{Translation}->{'ITSM Workorder'} = 'Задача';

    # Template: AgentITSMChangeReset
    $Self->{Translation}->{'Do you really want to reset this change?'} = 'Вы действительно желаете очистить это изменение?';

    # Template: AgentITSMChangeSearch
    $Self->{Translation}->{'(e.g. 10*5155 or 105658*)'} = '(т.е. 10*5155 или 105658*)';
    $Self->{Translation}->{'CABAgent'} = 'CAB агент';
    $Self->{Translation}->{'e.g.'} = 'т.е.';
    $Self->{Translation}->{'CABCustomer'} = 'CAB клиент';
    $Self->{Translation}->{'Instruction'} = 'Инструкция';
    $Self->{Translation}->{'Report'} = 'Отчет';
    $Self->{Translation}->{'Change Category'} = 'Изменить категорию';
    $Self->{Translation}->{'(before/after)'} = 'до/после';
    $Self->{Translation}->{'(between)'} = 'между';

    # Template: AgentITSMChangeSearchResultPrint
    $Self->{Translation}->{'WorkOrders'} = 'Задачи';

    # Template: AgentITSMChangeTemplate
    $Self->{Translation}->{'Save Change as Template'} = 'Сохранить изменение как шаблон';
    $Self->{Translation}->{'A template should have a name!'} = 'Надо присвоить имя шаблону!';
    $Self->{Translation}->{'The template name is required.'} = 'Требуется имя шаблона.';
    $Self->{Translation}->{'Reset States'} = 'Очистить состояния';
    $Self->{Translation}->{'Overwrite original template'} = 'Перезаписать исходный шаблон';
    $Self->{Translation}->{'Delete original change'} = 'Удалить исходное изменение';

    # Template: AgentITSMChangeTimeSlot
    $Self->{Translation}->{'Move Time Slot'} = 'Сместить диапазон времени';

    # Template: AgentITSMChangeZoom
    $Self->{Translation}->{'Change Information'} = 'Информация об изменении';
    $Self->{Translation}->{'PlannedEffort'} = 'Планируемые ресурсы???';
    $Self->{Translation}->{'Change Initiator(s)'} = 'Инициатор изменения';
    $Self->{Translation}->{'Change Manager'} = 'Менеджер изменения';
    $Self->{Translation}->{'Change Builder'} = 'Составитель изменения';
    $Self->{Translation}->{'CAB'} = 'CAB';
    $Self->{Translation}->{'Last changed'} = 'Дата последнего изменеия';
    $Self->{Translation}->{'Last changed by'} = 'Последний изменил';
    $Self->{Translation}->{'Ok'} = 'О.К.';
    $Self->{Translation}->{'Download Attachment'} = 'Загрузить вложение';

    # Template: AgentITSMTemplateDelete
    $Self->{Translation}->{'Do you really want to delete this template?'} = 'Ва действительно желаете удалить этот шаблон';

    # Template: AgentITSMTemplateEditCAB
    $Self->{Translation}->{'Edit CAB Template'} = 'Редактировать шаблон CAB';

    # Template: AgentITSMTemplateEditContent
    $Self->{Translation}->{'This will create a new change from this template, so you can edit and save it.'} =
        'Будет создано новое изменение из этого шаблона и вы сможете его редактировать и сохранить.';
    $Self->{Translation}->{'The new change will be deleted automatically after it has been saved as template.'} =
        'Новое изменение будет автоматически удалено после его сохранения в качестве шаблона.';
    $Self->{Translation}->{'This will create a new workorder from this template, so you can edit and save it.'} =
        'Будет создана новая задача из этого шаблона и вы сможете его редактировать и сохранить.';
    $Self->{Translation}->{'A temporary change will be created which contains the workorder.'} =
        'Будет создано временное изменение, содержащее задачу.';
    $Self->{Translation}->{'The temporary change and new workorder will be deleted automatically after the workorder has been saved as template.'} =
        'Временное изменение и новая задача будет автоматически удалены после сохранения задачи в качестве шаблона.';
    $Self->{Translation}->{'Do you want to proceed?'} = 'Желаете продолжить?';

    # Template: AgentITSMTemplateOverviewSmall
    $Self->{Translation}->{'TemplateID'} = 'ID шаблона';
    $Self->{Translation}->{'Edit Content'} = 'Редактировать содержание';
    $Self->{Translation}->{'CreateBy'} = 'Кем создан';
    $Self->{Translation}->{'CreateTime'} = 'Создан';
    $Self->{Translation}->{'ChangeBy'} = 'Кем изменен';
    $Self->{Translation}->{'ChangeTime'} = 'Изменен';
    $Self->{Translation}->{'Edit Template Content'} = 'Редактировать содержание шаблона';
    $Self->{Translation}->{'Delete Template'} = 'Удалить шаблон';

    # Template: AgentITSMWorkOrderAdd
    $Self->{Translation}->{'Add Workorder to'} = 'Добавить задачу к';
    $Self->{Translation}->{'Invalid workorder type.'} = 'Неправильный тип задачи.';
    $Self->{Translation}->{'The planned start time must be before the planned end time!'} = 'Время начала должно предшествовать времени окончания!';
    $Self->{Translation}->{'Invalid format.'} = 'Неверный формат';

    # Template: AgentITSMWorkOrderAddFromTemplate
    $Self->{Translation}->{'Select Workorder Template'} = 'Выбрать шаблон для задачи';

    # Template: AgentITSMWorkOrderDelete
    $Self->{Translation}->{'Do you really want to delete this workorder?'} = 'Вы действительно желаете удалить эту задачу?';
    $Self->{Translation}->{'You can not delete this Workorder. It is used in at least one Condition!'} =
        'Вы не можете удалить эту задачу. Она используется как минимум в одном условии!';
    $Self->{Translation}->{'This Workorder is used in the following Condition(s)'} = 'Эта задача используется в следующих условиях';

    # Template: AgentITSMWorkOrderEdit
    $Self->{Translation}->{'Move following workorders accordingly'} = 'Переместить/сдвинуть следующие задачи соответственно';
    $Self->{Translation}->{'If the planned end time of this workorder is changed, the planned start times of all following workorders will be changed accordingly'} =
        'Если запланированное время окончания задачи будет изменено, запланированное время начала всех последующих задач будет соответственно изменено';

    # Template: AgentITSMWorkOrderReport
    $Self->{Translation}->{'The actual start time must be before the actual end time!'} = 'Время начала должно предшествовать времени окончания!';
    $Self->{Translation}->{'The actual start time must be set, when the actual end time is set!'} =
        'Фактическое время начала должно быть задано, если задано время фактического окончания!';

    # Template: AgentITSMWorkOrderTake
    $Self->{Translation}->{'Current Agent'} = 'Текущий агент';
    $Self->{Translation}->{'Do you really want to take this workorder?'} = 'Вы действительно хотите взять эту задачу?';

    # Template: AgentITSMWorkOrderTemplate
    $Self->{Translation}->{'Save Workorder as Template'} = 'Сохранить задачу как шаблон';
    $Self->{Translation}->{'Delete original workorder (and surrounding change)'} = 'Удалить исходную задачу  (и окружающее изменение)';

    # Template: AgentITSMWorkOrderZoom
    $Self->{Translation}->{'Workorder Information'} = 'Информация о задаче';

    # SysConfig
    $Self->{Translation}->{'A list of the agents who have permission to take workorders. Key is a login name. Content is 0 or 1.'} =
        'Список агентов, имеющих права взять задачу в работу. Ключ - логин, Содержание - 0 или 1';
    $Self->{Translation}->{'A list of workorder states, at which the ActualStartTime of a workorder will be set if it was empty at this point.'} =
        'Список состояний задачи в которых фактическое время начала задачи может быть задано, если еще пусто к этому моменту.';
    $Self->{Translation}->{'Admin of notification rules.'} = 'Управление правилами уведомлений.';
    $Self->{Translation}->{'Admin of the CIP matrix.'} = 'Управление матрицей CIP';
    $Self->{Translation}->{'Admin of the state machine.'} = 'Управление машиной состояний';
    $Self->{Translation}->{'Agent interface notification module to see the number of change advisory boards.'} =
        'Модуль отображающий количество CAB в интерфейсе агента.';
    $Self->{Translation}->{'Agent interface notification module to see the number of changes managed by the user.'} =
        'Модуль отображающий количество изменений с которыми работает агент';
    $Self->{Translation}->{'Agent interface notification module to see the number of changes.'} =
        'Модуль отображающий количество изменений';
    $Self->{Translation}->{'Agent interface notification module to see the number of work orders.'} =
        'Модуль отображающий количество задач';
    $Self->{Translation}->{'Cache time in minutes for the change management toolbars. Default: 3 hours (180 minutes).'} =
        'Время кэширования в минутах для панели управления изменениями. По умолчанию: 3 часа (180 минут).';
    $Self->{Translation}->{'Cache time in minutes for the change management. Default: 5 days (7200 minutes).'} =
        'Время кэширования в минутах для управлени изменениями. По умолчанию: 5 дней (7200 минут).';
    $Self->{Translation}->{'Change Overview "Small" Limit'} = 'Изменить количество строк/записей при просмотре изменений в формате Small.';
    $Self->{Translation}->{'Change and WorkOrder templates edited by this user.'} = 'Шаблоны Изменения и Задачи отредактированные пользователем.';
    $Self->{Translation}->{'Change limit per page for Change Overview "Small"'} = 'Изменить количество записей на странице при просмотре изменений в формате Small.';
    $Self->{Translation}->{'Change search backend router of the agent interface.'} = 'Изменить источник поиска (backend) в интерфейсе агента.';
    $Self->{Translation}->{'Configures how often the notifications are sent when planned the start time or other time values have been reached/passed.'} =
        'Задает частоту отправки уведомлений, когда запланированное время начала или другие времеНные значения достигнуты/прошли.';
    $Self->{Translation}->{'Default type for a workorder. This entry must exist in general catalog class \'ITSM::ChangeManagement::WorkOrder::Type\'.'} =
        'Тип задачи по умолчанию. Он должен быть описан в качестве класса в Общем каталоге в ITSM::ChangeManagement::WorkOrder::Type';
    $Self->{Translation}->{'Define the signals for each workorder state.'} = 'Задает индикаторы для каждого состояния задачи.';
    $Self->{Translation}->{'Defines an overview module to show the small view of a change list.'} =
        'Задает модуль просмотра для отображения списка изменений в small формате.';
    $Self->{Translation}->{'Defines an overview module to show the small view of a template list.'} =
        'Задает модуль просмотра для отображения списка задач в small формате.';
    $Self->{Translation}->{'Defines if it will be possible to print the accounted time.'} = 'Задает возможность печати затраченного времени.';
    $Self->{Translation}->{'Defines if it will be possible to print the planned effort.'} = 'Задает возможность печати планируемых затрат.';
    $Self->{Translation}->{'Defines if reachable (as defined by the state machine) change end states should be allowed if a change is in a locked state.'} =
        'Определяет, будут ли (как задано машиной состояний) конечные состояния изменения разрешены , если изменение в состоянии блокировки.';
    $Self->{Translation}->{'Defines if reachable (as defined by the state machine) workorder end states should be allowed if a workorder is in a locked state.'} =
        'Определяет, будут ли (как задано машиной состояний) конечные состояния задачи разрешены, если задача в состоянии блокировки.';
    $Self->{Translation}->{'Defines if the accounted time should be shown.'} = 'Задает возможность отображения затраченного времени.';
    $Self->{Translation}->{'Defines if the actual start and end times should be set.'} = 'Задает необходимость указания фактического времени начала и окончания.';
    $Self->{Translation}->{'Defines if the change search and the workorder search functions could use the mirror DB.'} =
        'Задает будет ли использоваться зеркальная БД для поиска изменений и задач.';
    $Self->{Translation}->{'Defines if the change state can be set in AgentITSMChangeEdit.'} =
        'Задает возможность установки состояния изменения в AgentITSMChangeEdit';
    $Self->{Translation}->{'Defines if the planned effort should be shown.'} = 'Задает необходимость отображения планируемых затрат.';
    $Self->{Translation}->{'Defines if the requested date should be print by customer.'} = 'Задает возможность печати клиентом запрошенной даты.';
    $Self->{Translation}->{'Defines if the requested date should be searched by customer.'} =
        'Задает возможность поиска клиентом запрошенной даты.';
    $Self->{Translation}->{'Defines if the requested date should be set by customer.'} = 'Задает возможность установки клиентом запрошенной даты.';
    $Self->{Translation}->{'Defines if the requested date should be shown by customer.'} = 'Задает возможность отбражения у клиента запрошенной даты.';
    $Self->{Translation}->{'Defines if the workorder state should be shown.'} = 'Задает возможность отображения состояния задачи.';
    $Self->{Translation}->{'Defines if the workorder title should be shown.'} = 'Задает возможность отображения заголовка задачи.';
    $Self->{Translation}->{'Defines shown graph attributes.'} = 'Задает отображаемые атрибуты диаграммы.';
    $Self->{Translation}->{'Defines that only changes containing Workorders linked with services, which the customer user has permission to use will be shown. Any other changes will not be displayed.'} =
        'Задет, что только изменения содержащие задачи связанные с сервисами на которые у клиента есть права будут отображаться. Любые другие изменения не отображаются.';
    $Self->{Translation}->{'Defines the change states that will be allowed to delete.'} = 'Задает состояния изменения которые будет разрешено удалить.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the Change PSA overview.'} =
        'Задает состояния изменений используемые в фильтрах в обзоре изменений PSA.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the Change Schedule overview.'} =
        'Задает состояния изменений используемые в фильтрах в обзоре Планировщика изменений.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the MyCAB overview.'} =
        'Задает состояния изменений используемые в фильтрах в обзоре Мои CAB.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the MyChanges overview.'} =
        'Задает состояния изменений используемые в фильтрах в обзоре Мои изменения.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the change manager overview.'} =
        'Задает состояния изменений используемые в фильтрах в обзоре менеджеров изменений';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the change overview.'} =
        'Задает состояния изменений используемые в фильтрах в обзоре изменений.';
    $Self->{Translation}->{'Defines the change states that will be used as filters in the customer change schedule overview.'} =
        'Задает состояния изменений используемые в фильтрах в обзоре изменений управляемых клиентом.';
    $Self->{Translation}->{'Defines the default change title for a dummy change which is needed to edit a workorder template.'} =
        'Задает имя по умолчанию для фиктивного изменения, необходимое для редактирования шаблона задачи.';
    $Self->{Translation}->{'Defines the default sort criteria in the change PSA overview.'} =
        'Задает стандартные критерии сортировки при просмотре изменений PSA.';
    $Self->{Translation}->{'Defines the default sort criteria in the change manager overview.'} =
        'Задает стандартные критерии сортировки при просмотре изменений менеджера.';
    $Self->{Translation}->{'Defines the default sort criteria in the change overview.'} = 'Задает стандартные критерии сортировки при просмотре изменений.';
    $Self->{Translation}->{'Defines the default sort criteria in the change schedule overview.'} =
        'Задает стандартные критерии сортировки при просмотре изменений агента.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyCAB overview.'} =
        'Задает стандартные критерии сортировки при просмотре Моих CAB.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyChanges overview.'} =
        'Задает стандартные критерии сортировки при просмотре Моих изменений.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the MyWorkorders overview.'} =
        'Задает стандартные критерии сортировки при просмотре Моих задач.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the PIR overview.'} =
        'Задает стандартные критерии сортировки при просмотре изменений в состоянии PIR.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the customer change schedule overview.'} =
        'Задает стандартные критерии сортировки при просмотре изменений планируемых клиентом.';
    $Self->{Translation}->{'Defines the default sort criteria of the changes in the template overview.'} =
        'Задает стандартные критерии сортировки при просмотре шаблонов изменений.';
    $Self->{Translation}->{'Defines the default sort order in the MyCAB overview.'} = 'Задает стандартный порядок сортировки для просмотра Мои CAB.';
    $Self->{Translation}->{'Defines the default sort order in the MyChanges overview.'} = 'Задает стандартный порядок сортировки для просмотра Моих изменений';
    $Self->{Translation}->{'Defines the default sort order in the MyWorkorders overview.'} =
        'Задает стандартный порядок сортировки для просмотра Моих задач.';
    $Self->{Translation}->{'Defines the default sort order in the PIR overview.'} = 'Задает стандартный порядок сортировки для просмотра изменений в состоянии PIR.';
    $Self->{Translation}->{'Defines the default sort order in the change PSA overview.'} = 'Задает стандартный порядок сортировки для просмотра PSA.';
    $Self->{Translation}->{'Defines the default sort order in the change manager overview.'} =
        'Задает стандартный порядок сортировки для просмотра изменений менеджера.';
    $Self->{Translation}->{'Defines the default sort order in the change overview.'} = 'Задает стандартный порядок сортировки для просмотра изменений.';
    $Self->{Translation}->{'Defines the default sort order in the change schedule overview.'} =
        'Задает стандартный порядок сортировки для просмотра изменений выполняемых агентом.';
    $Self->{Translation}->{'Defines the default sort order in the customer change schedule overview.'} =
        'Задает стандартный порядок сортировки для просмотра выполняемых клиентом изменений.';
    $Self->{Translation}->{'Defines the default sort order in the template overview.'} = 'Задает стандартный порядок сортировки для просмотра шаблонов изменений.';
    $Self->{Translation}->{'Defines the default value for the category of a change.'} = 'Задает стандартное значение для категории изменения.';
    $Self->{Translation}->{'Defines the default value for the impact of a change.'} = 'Задает стандартное значение для влияния (impact) изменения.';
    $Self->{Translation}->{'Defines the field type of CompareValue fields for change attributes used in AgentITSMChangeConditionEdit. Valid values are Selection, Text and Date. If a type is not defined, the field will not be shown.'} =
        'Задает тип для CompareValue поля для атрибутов изменения в AgentITSMChangeConditionEdit. Допустимыми являются значения Selection, Text и Date. Если тип не задан, поле отображаться не будет.';
    $Self->{Translation}->{'Defines the field type of CompareValue fields for workorder attributes used in AgentITSMChangeConditionEdit. Valid values are Selection, Text and Date. If a type is not defined, the field will not be shown.'} =
        'Задает тип для CompareValue поля для атрибутов задачи в AgentITSMChangeConditionEdit. Допустимыми являются значения Selection, Text и Date. Если тип не задан, поле отображаться не будет.';
    $Self->{Translation}->{'Defines the object attributes that are selectable for change objects in AgentITSMChangeConditionEdit.'} =
        'Задает атрибуты объекта, доступные при выборе объектов изменения в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the object attributes that are selectable for workorder objects in AgentITSMChangeConditionEdit.'} =
        'Задает атрибуты объекта, доступные при выборе объектов задачи в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute AccountedTime in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута AccountedTime в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ActualEndTime in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута ActualEndTime в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ActualStartTime in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута ActualStartTime в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute CategoryID in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута CategoryID в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeBuilderID in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута ChangeBuilderID в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeManagerID in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута ChangeManagerID в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeStateID in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута ChangeStateID в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ChangeTitle in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута ChangeTitle в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute DynamicField in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута DynamicField в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute ImpactID in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута ImpactID в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PlannedEffort in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута PlannedEffort в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PlannedEndTime in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута PlannedEndTime в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PlannedStartTime in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута PlannedStartTime в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute PriorityID in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута PriorityID в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute RequestedTime in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута RequestedTime в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderAgentID in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута WorkOrderAgentID в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderNumber in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута WorkOrderNumber в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderStateID in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута WorkOrderStateID в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderTitle in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута WorkOrderTitle в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the operators that are selectable for the attribute WorkOrderTypeID in AgentITSMChangeConditionEdit.'} =
        'Задает операторы, доступные при выборе атрибута WorkOrderTypeID в AgentITSMChangeConditionEdit.';
    $Self->{Translation}->{'Defines the period (in years), in which start and end times can be selected.'} =
        'Задает период (в годах), в котором время начала и окончания могут быть выбраны.';
    $Self->{Translation}->{'Defines the shown attributes of a workorder in the tooltip of the workorder graph in the change zoom. To show workorder dynamic fields in the tooltip, they must be specified like DynamicField_WorkOrderFieldName1, DynamicField_WorkOrderFieldName2, etc.'} =
        'Задает отображаемые атрибуты задачи в подсказке для задачи на графике при просмотре изменения. Для отображения динамических полей в подсказке, они должны быть указаны как DynamicField_WorkOrderFieldName1, DynamicField_WorkOrderFieldName2, и т.д.';
    $Self->{Translation}->{'Defines the shown columns in the Change PSA overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре изменений PSA. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the Change Schedule overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре Change Schedule. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the MyCAB overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре MyCAB. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the MyChanges overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре MyChanges. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the MyWorkorders overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре MyWorkorders. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the PIR overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре PIR Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the change manager overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре изменений менеджера. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the change overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре изменений. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the change search. This option has no effect on the position of the column.'} =
        'Задает список колонок при поиске изменений. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the customer change schedule overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре изменений клиента. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the shown columns in the template overview. This option has no effect on the position of the column.'} =
        'Задает список колонок при просмотре шаблонов изменений. Не влияет на порядок колонок.';
    $Self->{Translation}->{'Defines the signals for each ITSMChange state.'} = 'Задает индикаторы для каждого состояния изменения.';
    $Self->{Translation}->{'Defines the template types that will be used as filters in the template overview.'} =
        'Задает типы шаблонов, которые будут использоваться ка фильтры при просмотре шаблонов.';
    $Self->{Translation}->{'Defines the workorder states that will be used as filters in the MyWorkorders overview.'} =
        'Задает состояния задач, которые будут использоваться в качестве фильтра при просмотре Моих задач.';
    $Self->{Translation}->{'Defines the workorder states that will be used as filters in the PIR overview.'} =
        'Задает состояния задач, которые будут использоваться в качестве фильтра при просмотре PIR.';
    $Self->{Translation}->{'Defines the workorder types that will be used to show the PIR overview.'} =
        'Задает типы задач, которые будут использоваться при просмотре PIR.';
    $Self->{Translation}->{'Defines whether notifications should be sent.'} = 'Задает, следует ли отправлять уведомления.';
    $Self->{Translation}->{'Determines if an agent can exchange the X-axis of a stat if he generates one.'} =
        'Задает возможность агенту поменять ось Х на графике при его создании.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes done for config item classes.'} =
        'Определяет, может ли базовый модуль отчетов строить отчеты об изменениях выполненных для классов учетных элементов.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes regarding change state updates within a timeperiod.'} =
        'Определяет, может ли базовый модуль отчетов строить отчеты об изменениях, в зависисмости от того, изменялось ли состояние изменения за период времени.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes regarding the relation between changes and incident tickets.'} =
        'Определяет, может ли базовый модуль отчетов строить отчеты об изменениях, в зависимости от отношений между изменением и заявкой об инциденте.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about changes.'} =
        'Определяет, может ли базовый модуль отчетов строить отчеты об изменениях.';
    $Self->{Translation}->{'Determines if the common stats module may generate stats about the number of Rfc tickets a requester created.'} =
        'Определяет, может ли базовый модуль отчетов строить отчеты о количестве созданных заявителем заявок с запросами на изменение (Rfc).';
    $Self->{Translation}->{'Dynamic fields (for changes and workorders) shown in the change print screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.'} =
        'Динамические поля (для изменений и задач) отображаемые на экране печати изменения в интерфейсе агента. Возможные значения: 0 = не показывать, 1 - показывать.';
    $Self->{Translation}->{'Dynamic fields shown in the change add screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} =
        'Динамические поля отображаемые на экране добавления изменения в интерфейсе агента. Возможные значения: 0 = не показывать, 1 = показывать, 2 = показывать и должно быть заполнено.';
    $Self->{Translation}->{'Dynamic fields shown in the change edit screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} =
        'Динамические поля отображаемые на экране редактирования изменения в интерфейсе агента. Возможные значения: 0 = не показывать, 1 = показывать, 2 = показывать и должно быть заполнено.';
    $Self->{Translation}->{'Dynamic fields shown in the change search screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.'} =
        'Динамические поля отображаемые на экране поиска изменения в интерфейсе агента. Возможные значения: 0 = не показывать, 1 = показывать.';
    $Self->{Translation}->{'Dynamic fields shown in the change zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.'} =
        'Динамические поля отображаемые на экране просмотра изменения в интерфейсе агента. Возможные значения: 0 = не показывать, 1 = показывать.';
    $Self->{Translation}->{'Dynamic fields shown in the workorder add screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} =
        'Динамические поля отображаемые на экране добавления задачи в интерфейсе агента. Возможные значения: 0 = не показывать, 1 = показывать, 2 = показывать и должно быть заполнено.';
    $Self->{Translation}->{'Dynamic fields shown in the workorder edit screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} =
        'Динамические поля отображаемые на экране редактирования задачи в интерфейсе агента. Возможные значения: 0 = не показывать, 1 = показывать, 2 = показывать и должно быть заполнено.';
    $Self->{Translation}->{'Dynamic fields shown in the workorder report screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled, 2 = Enabled and required.'} =
        'Динамические поля отображаемые на экране создания отчета по задаче в интерфейсе агента. Возможные значения: 0 = не показывать, 1 = показывать, 2 = показывать и должно быть заполнено.';
    $Self->{Translation}->{'Dynamic fields shown in the workorder zoom screen of the agent interface. Possible settings: 0 = Disabled, 1 = Enabled.'} =
        'Динамические поля отображаемые на экране просмотра задачи в интерфейсе агента. Возможные значения: 0 = не показывать, 1 = показывать.';
    $Self->{Translation}->{'DynamicField event module to handle the update of conditions if dynamic fields are added, updated or deleted.'} =
        'Модуль управления событиями для динамических полей при изменении Условий, если динамические поля добавляются, изменяются или удаляются.';
    $Self->{Translation}->{'ITSM event module deletes the history of changes.'} = 'ITSM модуль обработки событий, удаляющий историю изменений.';
    $Self->{Translation}->{'ITSM event module that cleans up conditions.'} = 'ITSM модуль обработки событий, очищающий условия.';
    $Self->{Translation}->{'ITSM event module that deletes the cache for a toolbar.'} = 'ITSM модуль управления событиями, который очищает кэш для панели инструментов.';
    $Self->{Translation}->{'ITSM event module that matches conditions and executes actions.'} =
        'ITSM модуль обработки событий, проверяющий соответствие условиям и выполняющий действия.';
    $Self->{Translation}->{'ITSM event module that sends notifications.'} = 'ITSM модуль обработки событий, отправляющий уведомления.';
    $Self->{Translation}->{'ITSM event module that updates the history of changes.'} = 'ITSM модуль обработки событий, обновляющий историю изменений.';
    $Self->{Translation}->{'ITSM event module to recalculate the workorder numbers.'} = 'ITSM модуль обработки событий, перевычисляющий номера задач.';
    $Self->{Translation}->{'ITSM event module to set the actual start and end times of workorders.'} =
        'ITSM модуль обработки событий, устанавливающий фактическое время начала и окончания задач.';
    $Self->{Translation}->{'ITSM event module updates the history of changes.'} = 'ITSM модуль обработки событий, обновляющий историю изменений.';
    $Self->{Translation}->{'ITSM event module updates the history of conditions.'} = 'ITSM модуль обработки событий, обновляющий историю условий';
    $Self->{Translation}->{'ITSM event module updates the history of workorders.'} = 'ITSM модуль обработки событий, обновляющий историю задач.';
    $Self->{Translation}->{'If frequency is \'regularly\', you can configure how often the notications are sent (every X hours).'} =
        'Если частота указана как "regularly" вы можете задать как часто будут отправляться уведомления (каждые Х часов).';
    $Self->{Translation}->{'Logfile for the ITSM change counter. This file is used for creating the change numbers.'} =
        'Лог файл для счетчика ITSM изменений. Он используется создания номеров изменений.';
    $Self->{Translation}->{'Module to check if WorkOrderAdd or WorkOrderAddFromTemplate should be permitted.'} =
        'Модуль, проверяющий, что WorkOrderAdd или WorkOrderAddFromTemplate должны быть разрешены.';
    $Self->{Translation}->{'Module to check the CAB members.'} = 'Модуль проверки члено CAB.';
    $Self->{Translation}->{'Module to check the agent.'} = 'Модуль проверки агента.';
    $Self->{Translation}->{'Module to check the change builder.'} = 'Модуль проверки составителя изменения.';
    $Self->{Translation}->{'Module to check the change manager.'} = 'Модуль проверки менеджера изменений.';
    $Self->{Translation}->{'Module to check the workorder agent.'} = 'Модуль проверки задач агента.';
    $Self->{Translation}->{'Module to check whether no workorder agent is set.'} = 'Модуль проверки отсутствия задач у агента.';
    $Self->{Translation}->{'Module to check whether the agent is contained in the configured list.'} =
        'Модуль проверки содержится ли агент в списке конфигурации.';
    $Self->{Translation}->{'Module to show a link to create a change from this ticket. The ticket will be automatically linked with the new change.'} =
        'Модуль для отображении ссылки на создание изменения из этой заявки. Заявка будет автоматически связана с новым изменением.';
    $Self->{Translation}->{'Notification (ITSM Change Management)'} = 'Уведомление (ITSM Change Management)';
    $Self->{Translation}->{'Only users of these groups have the permission to use the ticket types as defined in "ITSMChange::AddChangeLinkTicketTypes" if the feature "Ticket::Acl::Module###200-Ticket::Acl::Module" is enabled.'} =
        'Пользователи только указанных групп имеют права на использование типов заявок заданных в "ITSMChange::AddChangeLinkTicketTypes", если параметр "Ticket::Acl::Module###200-Ticket::Acl::Module" включен.';
    $Self->{Translation}->{'Parameters for the UserCreateWorkOrderNextMask object in the preference view of the agent interface.'} =
        'Параметры для объекта UserCreateWorkOrderNextMask  в предварительном просмотре в интерфейсе агента';
    $Self->{Translation}->{'Parameters for the pages (in which the changes are shown) of the small change overview.'} =
        'Параметры для страниц (на которых отображаются изменения) в кратком (small) обзоре изменений.';
    $Self->{Translation}->{'Presents a link in the menu to show the involved persons in a change, in the zoom view of such change in the agent interface.'} =
        'Показывает ссылку/элемент в меню для показа вовлеченных сотрудников для изменения при подробном просмотре изменения в интерфейсе агента.';
    $Self->{Translation}->{'Required privileges in order for an agent to take a workorder.'} =
        'Привилегии, требуемые агенту для принятия задачи в работу.';
    $Self->{Translation}->{'Required privileges to access the overview of all changes.'} = 'Привилегии, требуемые агенту для просмотра всех изменений.';
    $Self->{Translation}->{'Required privileges to add a workorder.'} = 'Привилегии, требуемые агенту для добавления новой задачи.';
    $Self->{Translation}->{'Required privileges to change the workorder agent.'} = 'Привилегии, требуемые агенту для изменения агента задачи.';
    $Self->{Translation}->{'Required privileges to create a template from a change.'} = 'Привилегии, требуемые агенту для создания шаблона из изменения.';
    $Self->{Translation}->{'Required privileges to create a template from a changes\' CAB.'} =
        'Привилегии, требуемые агенту для создания шаблона из изменения или CAB.';
    $Self->{Translation}->{'Required privileges to create a template from a workorder.'} = 'Привилегии, требуемые агенту для создания шаблона из задачи.';
    $Self->{Translation}->{'Required privileges to create changes from templates.'} = 'Права, требуемые для создания изменений с использованием шаблонов.';
    $Self->{Translation}->{'Required privileges to create changes.'} = 'Привилегии, требуемые агенту для создания изменения.';
    $Self->{Translation}->{'Required privileges to delete a template.'} = 'Привилегии, требуемые агенту для удаления шаблона.';
    $Self->{Translation}->{'Required privileges to delete a workorder.'} = 'Привилегии, требуемые агенту для удаления задачи.';
    $Self->{Translation}->{'Required privileges to delete changes.'} = 'Права, требуемые для удаления изменений.';
    $Self->{Translation}->{'Required privileges to edit a template.'} = 'Привилегии, требуемые агенту для редактирования шаблона.';
    $Self->{Translation}->{'Required privileges to edit a workorder.'} = 'Привилегии, требуемые агенту для редактирования задачи.';
    $Self->{Translation}->{'Required privileges to edit changes.'} = 'Привилегии, требуемые агенту для редактирования изменения.';
    $Self->{Translation}->{'Required privileges to edit the conditions of changes.'} = 'Привилегии, требуемые агенту для редактирования условий изменения.';
    $Self->{Translation}->{'Required privileges to edit the content of a template.'} = 'Права, необходимые для редактирования содержимого шаблона.';
    $Self->{Translation}->{'Required privileges to edit the involved persons of a change.'} =
        'Привилегии, требуемые агенту для редактирования списка вовлеченных сотрудников в изменении.';
    $Self->{Translation}->{'Required privileges to move changes in time.'} = 'Привилегии, требуемые агенту для сдвига временНых границ изменения.';
    $Self->{Translation}->{'Required privileges to print a change.'} = 'Привилегии, требуемые агенту для печати изменения.';
    $Self->{Translation}->{'Required privileges to reset changes.'} = 'Права, требуемые для очистки изменений.';
    $Self->{Translation}->{'Required privileges to view a workorder.'} = 'Привилегии, требуемые агенту для просмотра задачи.';
    $Self->{Translation}->{'Required privileges to view changes.'} = 'Привилегии, требуемые агенту для просмотра изменений.';
    $Self->{Translation}->{'Required privileges to view list of changes where the user is a CAB member.'} =
        'Привилегии, требуемые агенту для просмотра списка изменений, в которых агент является членом CAB.';
    $Self->{Translation}->{'Required privileges to view list of changes where the user is the change manager.'} =
        'Привилегии, требуемые агенту для просмотра списка изменений, в которых агент является менеджером изменений.';
    $Self->{Translation}->{'Required privileges to view overview over all templates.'} = 'Привилегии, требуемые агенту для просмотра всех шаблонов.';
    $Self->{Translation}->{'Required privileges to view the conditions of changes.'} = 'Привилегии, требуемые агенту для просмотра условий изменений.';
    $Self->{Translation}->{'Required privileges to view the history of a change.'} = 'Привилегии, требуемые агенту для просмтора истории изменения.';
    $Self->{Translation}->{'Required privileges to view the history of a workorder.'} = 'Привилегии, требуемые агенту для просмотра истории задачи.';
    $Self->{Translation}->{'Required privileges to view the history zoom of a change.'} = 'Привилегии, требуемые агенту для просмотра подробной истории изменения.';
    $Self->{Translation}->{'Required privileges to view the history zoom of a workorder.'} =
        'Привилегии, требуемые агенту для просмотра подробной истории задачи.';
    $Self->{Translation}->{'Required privileges to view the list of Change Schedule.'} = 'Привилегии, требуемые агенту для просмотра списка Планировщика изменений.';
    $Self->{Translation}->{'Required privileges to view the list of change PSA.'} = 'Привилегии, требуемые агенту для просмотра списка PSA.';
    $Self->{Translation}->{'Required privileges to view the list of changes with an upcoming PIR (Post Implementation Review).'} =
        'Привилегии, требуемые агенту для просмотра списка изменений с предстоящим PIR (Post Implementation Review).';
    $Self->{Translation}->{'Required privileges to view the list of own changes.'} = 'Привилегии, требуемые агенту для просмотра собственных изменений.';
    $Self->{Translation}->{'Required privileges to view the list of own workorders.'} = 'Привилегии, требуемые агенту для просмотра списка собственных задач.';
    $Self->{Translation}->{'Required privileges to write a report for the workorder.'} = 'Привилегии, требуемые агенту для создания отчета по задачам';
    $Self->{Translation}->{'Screen after creating a workorder'} = 'Показать этот экран после создания новой задачи';
    $Self->{Translation}->{'Selects the change number generator module. "AutoIncrement" increments the change number, the SystemID and the counter are used with SystemID.counter format (e.g. 100118, 100119). With "Date", the change numbers will be generated by the current date and a counter; this format looks like Year.Month.Day.counter, e.g. 2010062400001, 2010062400002. With "DateChecksum", the counter will be appended as checksum to the string of date plus the SystemID. The checksum will be rotated on a daily basis. This format looks like Year.Month.Day.SystemID.Counter.CheckSum, e.g. 2010062410000017, 2010062410000026.'} =
        'Задает способ генерации номеров изменений.  "AutoIncrement" - увеличивает номер на 1, формат - SystemID.counter (например, 100118, 100119).  "Date" - использует текущую дату, SystemID и счетчик, вид: Year.Month.Day.SystemID.counter - 2010062400001, 2010062400002. "DateChecksum" - счетчик дополняется контрольной суммой к строке из даты и SystemID. Формат строится как Year.Month.Day.SystemID.Counter.CheckSum. Контрольная сумма обновляется ежедневно, вид: 2010062410000017, 2010062410000026.';
    $Self->{Translation}->{'Sets the minimal change counter size (if "AutoIncrement" was selected as ITSMChange::NumberGenerator). Default is 5, this means the counter starts from 10000.'} =
        'Задает минимальное количество разрядов для счетчика изменений (если выбран тип  "AutoIncrement" для ITSMChange::NumberGenerator). По умолчанию - 5, что означает, что начальное значение счетчика будет 10000.';
    $Self->{Translation}->{'Sets up the state machine for changes.'} = 'Задает state machine для изменений.';
    $Self->{Translation}->{'Sets up the state machine for workorders.'} = 'Задает state machine для заданий.';
    $Self->{Translation}->{'Show this screen after I created a new workorder'} = 'Показать этот экран после создания новой задачи';
    $Self->{Translation}->{'Shows a checkbox in the AgentITSMWorkOrderEdit screen that defines if the the following workorders should also be moved if a workorder is modified and the planned end time has changed.'} =
        'Отображает поле выбора/checkbox на экране AgentITSMWorkOrderEdit которое задает будут ли сдвигаться последующие задачи, если задача изменяется и запланированное время окончания изменено.';
    $Self->{Translation}->{'Shows a link in the menu that allows changing the work order agent, in the zoom view of such work order of the agent interface.'} =
        'Отображает ссылку в меню, которая позволяет агента для задания, в детальном просмотре этого задания в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu that allows defining a change as a template in the zoom view of the change, in the agent interface.'} =
        'Отображает ссылку в меню, которая позволяет определить изменения как шаблон в детальном просмотре изменения в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu that allows defining a work order as a template in the zoom view of the work order, in the agent interface.'} =
        'Отображает ссылку в меню, которая позволяет определвить задание как шаблон в детальном просмотре задания, в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu that allows editing the report of a workd order, in the zoom view of such work order of the agent interface.'} =
        'Отображает ссылку в меню, которая позволяет редактировать отчет о задании, в детальном просмотре этого задания в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu that allows linking a change with another object in the change zoom view of the agent interface.'} =
        'Отображает ссылку в меню, которая позволяет установить связь изменения с другим объекторм в детальном просмотре изменения в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu that allows linking a work order with another object in the zoom view of such work order of the agent interface.'} =
        'Отображает ссылку в меню, которая позволяет установить связь задания с другим объекторм в детальном просмотре задания в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu that allows moving the time slot of a change in its zoom view of the agent interface.'} =
        'Отображает ссылку в меню которая позволяет перемещать временной интервал изменения в его детальном просмотре в агентском интерфейсе.';
    $Self->{Translation}->{'Shows a link in the menu that allows taking a work order in the its zoom view of the agent interface.'} =
        'Отображает ссылку для позволяет принять задание в его детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to access the conditions of a change in the its zoom view of the agent interface.'} =
        'Отображает ссылку в меню для доступа к условиям изменения в его детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to access the history of a change in the its zoom view of the agent interface.'} =
        'Отображает ссылку в меня для доступа к истории изменения в его детальном просмотре в интерфейсе агента';
    $Self->{Translation}->{'Shows a link in the menu to access the history of a work order in the its zoom view of the agent interface.'} =
        'Отображает ссылку в меню для доступа к истории задания при его детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to add a work order in the change zoom view of the agent interface.'} =
        'Отображает ссылку в меню для добавления задания в детальном просмотре изменения в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to delete a change in its zoom view of the agent interface.'} =
        'Показывает пункт меню для удаления изменения при его подробном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to delete a work order in its zoom view of the agent interface.'} =
        'Отображает ссылку в меню для удаления задания в его детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to edit a change in the its zoom view of the agent interface.'} =
        'Отображает ссылку в меню для редактирования измененя в его детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to edit a work order in the its zoom view of the agent interface.'} =
        'Отображает ссылку в меню для редактирования задания в его детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to go back in the change zoom view of the agent interface.'} =
        'Отображает ссылку в меню для возврата в детальный просмотр изменения в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to go back in the work order zoom view of the agent interface.'} =
        'Отображает ссылку в меню для возврата в детальный просмотр задания в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to print a change in the its zoom view of the agent interface.'} =
        'Отображает ссылку в меню для печати изменения при его детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to print a work order in the its zoom view of the agent interface.'} =
        'Отображает ссылку в меню для печати задания при ее детальном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows a link in the menu to reset a change and its workorders in its zoom view of the agent interface.'} =
        'Показывает пункт меню для очистки изменения и его задач при его подробном просмотре в интерфейсе агента.';
    $Self->{Translation}->{'Shows the change history (reverse ordered) in the agent interface.'} =
        'Показывает историю изменений (в обратном порядке) в интерфейсе агента.';
    $Self->{Translation}->{'State Machine'} = 'Состояния';
    $Self->{Translation}->{'Stores change and workorder ids and their corresponding template id, while a user is editing a template.'} =
        'Сохраняет идентфикаторы - id\'s изменениия и задачи и их соответствующие идентификаторы шаблонов во время редактирования их пользователем.';
    $Self->{Translation}->{'The identifier for a change, e.g. Change#, MyChange#. The default is Change#.'} =
        'Индентификатор для изменения, например Change#, MyChange#. The default is Change#.';
    $Self->{Translation}->{'The identifier for a workorder, e.g. Workorder#, MyWorkorder#. The default is Workorder#.'} =
        'Индентификатор для задания, например Workorder#, MyWorkorder#. The default is Workorder#.';
    $Self->{Translation}->{'This ACL module restricts the usuage of the ticket types that are defined in the sysconfig option \'ITSMChange::AddChangeLinkTicketTypes\', to users of the groups as defined in "ITSMChange::RestrictTicketTypes::Groups". As this ACL could collide with other ACLs which are also related to the ticket type, this sysconfig option is disabled by default and should only be activated if needed.'} =
        'Этот ACL модуль ограничивает использование типов заявок заданных в параметре  \'ITSMChange::AddChangeLinkTicketTypes\', для агентов групп, указанных в "ITSMChange::RestrictTicketTypes::Groups". Так как этот ACL может конфликтовать с другими ACL, также связанными с типами заявок, этот параметр отключен по умолчанию и может быть, при необходимости, активирован вручную.';
    $Self->{Translation}->{'Types of tickets, where in the ticket zoom view a link to add a change will be displayed.'} =
        'Типы заявок, в которых подробном просмотре ссылка для добавления изменения будет показана.';

}

1;
