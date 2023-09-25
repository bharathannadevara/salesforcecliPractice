public class soslpractice {
    public static void retrivedata(){
        list<account> acclist = new list<account>();
		list<contact> conlist = new list<contact>();
        list<opportunity> opplist = new list<opportunity>();
        list<lead> ldlist = new list<lead>();
        list<candidate__c> candlist = new list<candidate__c>();
        list<case> caselist = new list<case>();
        

        for(integer i =1;i<=2000;i++){
            Account acc = new Account();
            contact con = new contact();
            opportunity opp = new opportunity();
            lead ld = new lead();
            candidate__c can = new candidate__c();
            case cas = new case();
            
            acc.Name='venkatsaikrishna'+i;
            
            con.lastName='injam'+i;
            
            opp.Name='opp'+i;
            opp.CloseDate=System.today();
            opp.StageName='Qualification';
            
            ld.LastName='lead'+i;
            ld.Company='venkat private lmd ';
            
            can.First_Name__c ='candidate'+i;
            
            cas.Status='New';
            cas.Origin='phone';
            
            
        }
    
	}
}