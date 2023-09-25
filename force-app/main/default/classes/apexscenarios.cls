public class apexscenarios {
    public static void senariofour(){
        List<Account> acclist = [select id,name,(select id, name from contacts) from account where calendar_year(createddate)=2023];
        
        for(Account acc : acclist){
            acc.Total_contact_count__c = acc.contacts.size();
        }
        update acclist;
    }
    public static void secnariothree(){
        List<Account> acclist = [select id,name ,(select id, name from contacts) from account where calendar_year(createddate)=2023];
            for(account acc:acclist){
                integer total=0;
                for(contact con:acc.contacts){
                    if(con.id == con.id){
                        total++;
                    }else{
                        System.debug(acc.Name + ' has ' + '0' + 'contacts');
                    }
                }
                 system.debug(acc.Name +' has '+ total);
            }
    }
    public static void scenariotwo(){
        List<opportunity> opp = [select id, name, StageName from opportunity];
        for(Opportunity op : opp){
            if(op.stageName == 'closed won'){
                System.debug('opportunity is closed won');
            }else if(op.StageName=='closed lost'){
                System.debug('opportunity is  close lost');
            } else {
                System.debug('opportunity is open');
            }
        }
    }
    public static void secnariosOne(){
        List<Account> acclist = [select id,name,(select id,name,amount from Opportunities) from account where phone!=null];
        
        for(account acc : acclist){
            decimal total=0;
            for(Opportunity opp : acc.opportunities){
                if(opp.Amount != null){
                    total = total + opp.Amount;
                }               
            }
             system.debug(acc.Name+' has ' + total + ' worth opportunities ');
        }
    }
}