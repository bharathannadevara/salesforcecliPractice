trigger ApexTriggerOne on Account (before insert) {
    if(trigger.isbefore)
		system.debug('hello before insert event is performed successfully');
}