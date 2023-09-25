public class Areaandperimeterofsquarewithstatic {
	//method to find area of a square using static method
	public static Integer numbers=0;
    public static void area(){
        decimal sideone=10,sidetwo=20;
        decimal area = sideone * sidetwo;
        System.debug('area of a square '+ area);
    }
    // method to find perimeter of a square using static method
      public static void perimeter(){
        decimal sideone=10;// in square all side are equal
        decimal perimeter = 4*sideone;
        System.debug('perimeter of a square '+ perimeter);
    }
 
}