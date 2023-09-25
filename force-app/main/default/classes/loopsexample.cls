public class loopsexample {
    public static void mapmethods(){
        list<account> listaccounts=[select id, name from account limit 5];
        map<id,Account> mapacc = new map<id, account>();
        
        //mapacc.putall(listaccounts); or 
       
        for(account acc : listaccounts){
            mapacc.put(acc.Id,acc);
        }
        
        System.debug(mapacc);
        
        for(id n:mapacc.keyset()){
            System.debug(n);
        }
        
        for(Account accc:mapacc.values()){
            System.debug(accc.name);
        }
    }
            
    //print any math table 
    public static void table(integer num){
        for(integer i=1;i<=10;i++){
            System.debug(num + ' * ' + i +' = '+num*i);
        }
    }//method end
   
    // print even or odd number upto N
    public static void evennumbers(integer num){
        for(integer i=1;i<=num;i++){
            if( math.mod(i,2)==0)
                system.debug(i);          
        }// for loop end
    }// method end
    public static void oddnumbers(integer num){
        for(integer i=1;i<=num;i++){
            if( math.mod(i,2)==1)
                system.debug(i);          
        }// for loop end
    }// method end
    public static void sumOfNaturalNum(integer num){
        integer sum=0;
        for(integer i=1;i<=num;i++){    
            sum = sum + i;       
        }// for loop end
        system.debug('sum of natural numbers ' + sum);
    }// method end
    
    // implement a math tables using while loop
     public static void tableusingwhileloop(integer num){
        integer i = 1;
         while(i<=10){
            System.debug(num + ' * ' + i + ' = ' + num*i);
            i++;
         }
    }// method end
    
    public static void accountInformation(){
        list<Account> acclists = new list<account>();
        acclists=[select id, name from account limit 5];
        set<id> setid = new set<id>();
        list<id> listids = new list<id>();
        
        
        if(acclists.size()>0){ // null check
            
            /*for(Account acc:acclists){
                System.debug( acc.id +'  '+ acc.name);
            } */
            
            //or
            
            for(integer i = 0 ; i<acclists.size();i++){
                Account acc=acclists.get(i);
                setid.add(acc.id);
                System.debug(acc.Id + '  '+ acc.name);
            }// for loop end              
        }
        	System.debug('setid'+setid);
            listids.addAll(setid);
            // iterating setid's
            for(integer s =0 ;s<listids.size();s++){
                System.debug(listids.get(s));
            }
    }// method end
}