public class AreaAndPerimeterOfSquare {
    decimal sideone;
    decimal sidetwo;
    //parameterized constructor
    public AreaAndPerimeterOfSquare(decimal s1 , decimal s2){
        sideone=s1;
        sidetwo=s2;
    }
    //To find area of square
    public void areaofsquare(){
        decimal area = sideone * sidetwo;
        System.debug('area of a square ='+area);
    }
    // To find perimeter of square
    public void perimeterofsquare(){
        decimal perimeter = 4*sideone; //(any side we can multiply with 4)
        System.debug('perimeter of a square ='+ perimeter);
    }
}