public class dmldemo {
    public static void deletedml(){
        list<account> acclist = [select id, name, industry from account where name like 'test demo%'];
     

        if(!acclist.isempty()){
            delete acclist;
        }
    }
    
    
    
    
    public static void updatedml(){
        
        list<account> acclist = [select id, industry from account where industry ='banking'];
        for(account acc: acclist){
            acc.Industry='education';
        }
      
        for(integer i = 0 ; i<5 ; i++){
            Account acc = new Account();
            acc.Name = 'test UPSERT' + i;
            acc.Industry='construction';
            acc.Active__c= 'yes';
            acclist.add(acc);
        }
        upsert acclist;
    }
    
    
    
    
    public static void insertdemo(){
        list<account> acclist = new list<account>();
        for(integer i = 0 ; i<200 ; i++){
            Account acc = new Account();
            acc.Name = 'test demo' + i;
            acc.Industry='construction';
            acc.Active__c= 'yes';
           	acclist.add(acc);
        }
   
        insert acclist;
        //acclist.add(acc);
        
       /* Account acc1 = new Account();
        acc1.Name='test 5';
        acc1.Industry = 'electronics';
        acc1.Active__c='yes';
        acclist.add(acc1);*/
        
        //insert acclist;
    }
}