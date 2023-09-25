public class problemone {
    public static void maximumNumber(Integer num1,Integer num2){
        if(num1>num2)
            system.debug('max number is ' + num1);
        else
            System.debug('max number is '+ num2);
    }
    public static void eligibleForVote(Integer person){
        if(person >= 18)
            system.debug('person is eligible for vote ');
        else
            System.debug('person is not eligible for vote');
    }
    public static void evenOrOdd(Integer num){
       integer m=math.mod(num,2);
        if(m==0)
            system.debug('the given number is even');
        else
            System.debug('the givenn number is odd');
    }
}