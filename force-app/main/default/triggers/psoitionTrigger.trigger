trigger psoitionTrigger on Position__c (before insert) {
	if(trigger.isinsert)
        if(trigger.isbefore)
        	AccountTriggerHandler.beforeinsertwithpos(trigger.new);
}