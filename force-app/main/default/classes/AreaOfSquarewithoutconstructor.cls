public class AreaOfSquarewithoutconstructor {
	//method to find area of a square 
    public void area(){
        decimal sideone=10,sidetwo=20;
        decimal area = sideone * sidetwo;
        System.debug('area of a square = ' + area);
    }
    // method to find perimeter of a square 
    public void perimeter(){
        decimal sideone=10;// In Square all side are equal
        decimal perimeter = 4*sideone;
        System.debug('perimeter of a square ='+perimeter);
        
    }
}