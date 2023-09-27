trigger Accwithopp on Account (before insert,After insert){
    if(trigger.isinsert)
       	 if(trigger.isAfter)
           AccountTriggerHandler.updatelist(Trigger.New);
}

i changed something in this file