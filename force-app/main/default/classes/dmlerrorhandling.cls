public class dmlerrorhandling {
    public static void databasesaveresultmethod(){
        list<Account> acclist = new list<Account>();
        
        Account acc0 = new Account();
        acc0.Name = 'handburger';
        acc0.Active__c= 'yes';
        acclist.add(acc0);
        
        Account acc1 = new Account();
        acc1.Name = 'handburger';
        acc1.Active__c= 'yes';
        acclist.add(acc1);
        
        Account acc2 = new Account();
        acc2.Name = 'handburger';
        acc2.Active__c= 'yes';
        acclist.add(acc2);
        
        Account acc3 = new Account();
        acc3.Name = '';
        acclist.add(acc3);
        
      database.SaveResult[] result = database.insert(acclist,false);
        for(database.SaveResult sr:result){
            if(sr.isSuccess()){
                system.debug('successfully inserted records'+sr.getId());
            }
            else{
                for(database.error de : sr.getErrors()){
                    System.debug('these are the errors has occured');
                    System.debug('the error message ' + de.getmessage());
                    System.debug('fields are effected '+ de.getfields());
                }
            }
            
        }  
        
       
    }
}