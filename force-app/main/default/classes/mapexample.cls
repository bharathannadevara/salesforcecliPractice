public class mapexample {
    public static void mapexample(){
        map<Integer,String> m = new map<Integer,String>();
        m.put(1,'venkat');
        m.put(2,'rk');
        m.put(3,'ramu');
        m.put(4,'darga');
        m.put(5,'vamshi');
        for(integer i =1;i<=5;i++){
            System.debug('value ='+ m.get(i));
        }
    }
    
    public static void mapexample2(){
        map<String,String> ma = new map<string,String>();
        ma.put('infosys', 'venkat');
        ma.put('tcs','rk');
        ma.put('tech mahindra','bhargav');
        System.debug(ma.containsKey('infosys'));
        for(string s:ma.keyset()){
            System.debug(s);
        }
        	
    }
    
    public static void mapexample3(){
        list<Account> acc=[select id , name from account limit 5];
        map<id,Account> idtoacc = new map<id,account>();
        idtoacc.putall(acc);
        for(id i:idtoacc.keyset()){
            System.debug(i);
        }
         for(Account acc1:idtoacc.values()){
            System.debug(acc1.Name);
        }
    }
    
    public static void mapexample4(){
        list<Account> acc = [select id , name from account limit 5];
        map<id,Account> idtoacc = new map<id,account>();
        for(Account accu : acc ){
            idtoacc.put(accu.id,accu); 
        }
        System.debug(idtoacc);
    }
    public static void mapexample5(){
        list<Position__c> posi = [select id , name from Position__c limit 5];
        map<id,Position__c> idtopos = new map<id,Position__c>();
        for(Position__c pos : posi ){
            idtopos.put(pos.id,pos); 
        }
        for(id i:idtopos.keyset()){
            System.debug(idtopos.get(i));
        }
        
    }
}