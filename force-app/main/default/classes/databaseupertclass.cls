public class databaseupertclass {
    public static void upertclassmethod(){
        list<account> acclist = new list<account>();
        Account acc = new Account();
        acc.Name='oracle';
        acc.Active__c ='yes';
        acclist.add(acc);
        
        Account acc1 = new Account();
        acc1.Name='';
        acc1.Active__c ='yes';
        acclist.add(acc1);
        
        Account acc2 = new Account();
        acc2.id='0015j000014ibO7AAI';
        acc2.Industry='education';
        acclist.add(acc2);

        
        database.upsertresult[] result=database.upsert(acclist,false);
        for(database.UpsertResult ur :result){
            if(ur.isSuccess())
                if(ur.iscreated())
                 system.debug('record that are inserted ' + ur.getId());    
                else
                 System.debug('record is updated');
            else{
                for(database.error errors : ur.geterrors()){
                    System.debug('errors occured');
                    System.debug(errors.getMessage());
                    System.debug('field effected due to error that field is   '+ errors.getfields());
                }
            } 
        
        }// main for loop end
     
        
        
    }// method end
}// class end