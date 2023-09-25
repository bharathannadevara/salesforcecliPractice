public class Positonrecord {
    public static id createPosition(string positionname){
        Position__c pos = new 	Position__c();
        pos.Name=positionname;
        pos.RecordTypeId='0125j000000JEjJAAW';
        insert pos;
        return pos.id;
    }
    
    public static id createcandidate(String firstname,String lastname,String email){
        Candidate__c can = new Candidate__c();
        can.First_Name__c=firstname;
        can.Last_Name__c=lastname;
        can.Email__c=email;
        insert can;
        return can.id;
    }
    
    public static void createjobapplication(String positionname,Integer rating){
        Position__c pos = new Position__c();
        pos.Name=positionname;
        pos.RecordTypeId='0125j000000JEjJAAW';
        insert pos;
        
        Candidate__c can = new Candidate__c();
        can.First_Name__c='rupesh';
        can.Last_Name__c='r';
        can.Email__c='reupesh@gmail.com';
        insert can;
        
        Job_Application__c job = new Job_Application__c();
        job.Position__c=pos.Id;
        job.Candidate__c=can.Id;
        job.Status__c='new';
        insert job;
        
        Review__c re = new Review__c();
        re.Job_Application__c = job.Id; 
        re.Rating__c=rating;
        insert re;
    }
    
    public static void updatinginformation(){
         Job_Application__c job = new Job_Application__c();
        id idforposition = 'a0B5j000006OgOPEA0';
        id idforcandidate ='a0C5j000005mzyeEAA';
        job.Position__c= idforposition;
        job.Candidate__c=idforcandidate;
        job.Status__c='new';
        insert job;
    }
 
    
  
}