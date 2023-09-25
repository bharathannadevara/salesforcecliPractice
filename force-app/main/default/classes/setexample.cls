public class setexample {
    public static void childToParent2(){
        List<job_application__c> acclistparent = [select id, name , position__r.id from job_application__c];
          System.debug(acclistparent);
        
        for(job_application__c ja : acclistparent){
            System.debug(ja.name + '  ' + ja.position__c);
        }
  
    }
    
    
    public static void childToParent(){
        List<contact> acclistchild = [select id, firstname, Account.Name from contact];
      //  System.debug(acclistchild);
        
        for(contact con : acclistchild){
            System.debug(con.firstName + con.AccountId);
        }
    }
    
    
    
    public static void parentTOchild(){
        list<Position__c> acclists = [select id, name , (select id, name from Job_applications__r ) from position__c];
        
        
        for(Position__c pos : acclists){
            System.debug('position Name  - '+pos.name);
            for(job_application__c job : pos.Job_applications__r){
                System.debug('job application Number  - '+job.name);
            }
        }
    }
    
    
    public static void information(){
        list<Account> acclist = [select id, name, (select id, firstname, lastname from Contacts) from account where rating ='hot'];
        system.debug(acclist);
        for(account acc: acclist){
            System.debug(acc.Id + '  '+ acc.Name);
            for(Contact con : acc.contacts){
                System.debug(con.Id + '  ' + con.FirstName);
            }
        }
        
    }
    
    public static void positionsetmethod(){
        list<Position__c> setpos=[select id, name from Position__c limit 5];
        set<id> pos = new set<id>();
        set<String> posstring = new set<string>();
        
        for(Position__c p : setpos){
            pos.add(p.Id);
            posstring.add(p.Name);
        }
        System.debug(pos);
                System.debug(posstring);
        
    }
    public static void setlistmethod(){
        set<Integer> s = new set<integer>();
        s.add(10);
        s.add(20);
        s.add(30);
        s.add(20);
        System.debug(s);
        
        list<Integer> k = new list<integer>();
        k.add(50);
        k.add(60);
        System.debug(k);
        s.addall(k);
        system.debug(s);
    }
    
    public static void containsallmethod(){
        set<Integer> s = new set<integer>();
        s.add(10);
        s.add(20);
        s.add(30);
        System.debug(s);
        
        list<Integer> k = new list<integer>();
 
        k.add(50);
        k.add(60);
        k.add(30);
        s.addall(k);
      
        System.debug(s.retainall(k));
        System.debug(s);
        
    }
    
    public static void idlist(){
        list<Account> idlists=[select id,Name from Account limit 5];
        set<id> idcontainer = new set<id>();
        Integer size = idlists.size();
        System.debug(size);
       // for(Integer i =0;i<size;i++){
            //Account acc = idlists.get(i);
            //idcontainer.add(acc.Id); 
       // }// for end
		// another method
        for(Account acc:idlists){
            idcontainer.add(acc.id);
        }
       
        System.debug(idcontainer);
        
    }
}