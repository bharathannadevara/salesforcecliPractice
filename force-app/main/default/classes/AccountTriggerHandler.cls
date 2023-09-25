public class AccountTriggerHandler {
    public static void accoutinsert(){
        list<Account> acctriggerlist = new list<Account>();
        
        for(integer i= 1 ; i<=5 ; i++){
            Account acc = new Account();
            acc.Name = 'account with trigger'+i;
            acctriggerlist.add(acc);
        }
        
        insert acctriggerlist;
    }
    
    public static void insertwithtrigger(List<Account> acclist){

        for(Account acc : acclist){
            acc.description = 'account created with AccountTriggerHandler';
        }
    }
    
    public static void insertlist(List<Account> acclist){
        
        for(Account acc : acclist){
            if(acc.Industry!=null && acc.Industry=='media'){
                acc.Rating='hot';
            }
        }
    }
    
    public static void updatelist(List<Account> acclist){
        list<opportunity> opplist = new list<opportunity>();
        for(account acc: acclist){        
            opportunity c = new opportunity();   
            c.AccountId=acc.id;
            c.Name='electronic india ';
            c.StageName='qualification';
            c.CloseDate=system.today();
           //	acc.AnnualRevenue=6546546.00;
            opplist.add(c);
        }
        insert opplist;
        
    }
    
    public static void beforeinsertwithpos(List<Position__c> poslist){
			
        for(Position__c pos: poslist){
            if(pos.Status__c == 'new position'){
                if(pos.Open_Date__c==null){
                    pos.Open_Date__c = system.today();
                }
                if(pos.Min_Pay__c == null){
                    pos.Min_pay__c = 10000;                
                }
                if(pos.Max_Pay__c == null){
                    pos.Max_pay__c = 15000;                  
                }
            }
                          	
        }// for loop end
        
    }
    
}