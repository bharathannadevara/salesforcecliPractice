trigger ApexTriggerTwo on Account (before insert) {
   AccountTriggerHandlerEx.beforeInsert(Trigger.new);
}