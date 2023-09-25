public class RectanglewithStatic {

    
  
	//method1
       public static void area(decimal length,decimal breath){
        decimal a = length * breath;
        System.debug('area ='+ a);
        
    }
    
    //method2
    public static void perimeter(decimal length,decimal breath){
        decimal b = 2*(length+breath);
        System.debug('perimeter of a rectangle = '+ b);
    }
}