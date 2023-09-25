public class google {
    public static void getmethod(){
        sObject obj = [select id , name from account limit 1];
   	Account acc = (Account)obj;
    System.debug(acc.Name);
    }
	
    
}