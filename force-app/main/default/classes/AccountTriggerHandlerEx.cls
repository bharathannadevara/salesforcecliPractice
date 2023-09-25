public class AccountTriggerHandlerEx {
    public static void beforeInsert(List<Account> acclist){
         for(Account acc:acclist){
        	System.debug(acc.Name);
    		}
    }
}