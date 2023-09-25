public class Rectangle {
    // method 
    public void area(){
        decimal length=5.6;
        decimal breath = 6;
        decimal a = length * breath;
        System.debug('area ='+ a);
        
    }
    
    //method2
    public void perimeter(decimal length,decimal breath){
        decimal b = 2*(length+breath);
        System.debug('perimeter of a rectangle = '+ b);
    }
    
}// class end