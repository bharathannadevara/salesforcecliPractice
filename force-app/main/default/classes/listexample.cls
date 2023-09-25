public class listexample {
    public static void accountlist(){
  		List<Account> accList = new List<Account>();
     	Account acc1 = new Account();
        acc1.Name='tata consultancy services';
     	accList.add(acc1);
        
        Account acc2 = new Account();
        acc2.Name='infosys';
        accList.add(acc2);
        
        insert accList;

    }
    
    public static void positionlist(){
        List<Position__c> posList = new List<Position__c>();
        Position__c pos1 = new Position__c();
        pos1.Name='angular';
        poslist.add(pos1);
        
        Position__c pos2 = new Position__c();
        pos2.Name='react developer';
        poslist.add(pos2);
        
        insert posList;
    }
    
    
    
    
    
}