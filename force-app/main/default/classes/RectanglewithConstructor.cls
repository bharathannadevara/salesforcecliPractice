public class RectanglewithConstructor {
     decimal length;
     decimal breath;
    
    // parameterized constructor 
    // for default constructor apex triggers automatically internally and it intilizes for variables with zero values 
    /* 
       	 public RectanglewithConstructor(decimal l,decimal b){
            length = l;
            breath = b;
         }
	*/
    
    // default constructor
    public RectanglewithConstructor(){
        breath = 20;
        length =30;
    }
    //method1
    public void area(){
        decimal a = length * breath;
        System.debug('area ='+ a);
        
    }
    
    //method2
    public void perimeter(){
        decimal b = 2*(length+breath);
        System.debug('perimeter of a rectangle = '+ b);
    }

}// class end