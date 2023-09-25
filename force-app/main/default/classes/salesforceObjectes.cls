public class salesforceObjectes {
	
    public static id insertAccount(){
        Account acc = new Account();
        acc.Name='sai krishna';
        insert acc; 
        return acc.Id;
    }
    
    public static void insertContact(){
        contact con = new contact();
        con.AccountId=insertAccount();
        con.firstname='rupa';
        con.LastName='injam';
        insert con;
    }
    
        public static void insertAccwithconandoppandcase(){
            Account acc = new Account();
            acc.Name='sai krishna';
            insert acc;
                
            contact con = new contact();
            con.AccountId=acc.Id;
            con.FirstName='anjali';
            con.LastName='k';
            insert con;
               
            Opportunity opp = new Opportunity();
            opp.AccountId=acc.Id;
            opp.Name='opp 101';
            opp.CloseDate=System.today();
            opp.StageName='Qualification';
            insert opp;
            
            case c = new case();
            c.AccountId=acc.Id;
            c.Status='new';
            c.Origin='Phone';
            insert c;
        
       
    }
}