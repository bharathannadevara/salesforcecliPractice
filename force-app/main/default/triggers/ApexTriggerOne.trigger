trigger ApexTriggerOne on Account (before insert) { // test commit 
    if(trigger.isbefore)
		system.debug('hello before insert event is performed successfully');
}

