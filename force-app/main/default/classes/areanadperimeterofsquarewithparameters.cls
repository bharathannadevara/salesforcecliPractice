public class areanadperimeterofsquarewithparameters {
    //method to find area of a square using static method with parameters
	  public static void area(decimal sideone,decimal sidetwo){
        decimal area = sideone * sidetwo;
        System.debug('area of a square '+ area);
    }
    // method to find perimeter of a square using static method with parameters
      public static void perimeter(decimal sides){
        decimal perimeter = 4*sides;
        System.debug('perimeter of a square '+ perimeter);
    }
}