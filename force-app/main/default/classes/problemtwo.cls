public class problemtwo {
    //check wheather a number is positive, negeative, zero using else if ladder
    public static void elseif(Integer num){
        if(num==0)
            System.debug('it is zero');
        else if(num>0)
            System.debug('it is a positive number');
        else
            System.debug('it is a negeative number');
    }// method end
    
    // check wheather a number is positive, negeative, zero using nested if ladder
    public static void nestedif(integer num){
        if(num >=0)
            if(num>0)
            	System.debug('it is a positive number');
        	else
                System.debug('number is zero');
        else
            System.debug('it is a negeative number');
    }
    // example of a ternary operator 
    public static void ternaryoperator(integer num1, integer num2){
        integer result;
            result = num1>num2 ? num1 : num2;
        System.debug('max number is'+result);
    }
}