
String text = "idk how to make strings"; // Declaring strings.
String uppercase = text.toUpperCase(); // Given that strings are immutable, this method only makes a copy of the content of the string. We need to store it in another variable.

String cmp = "one";
String cmp2 = "one";  // To compare use equals() method, as '==' compares the addres in memory, rather than the string.
                      // as such: cmp.equals(cmp2); instead of cmp == cmp2;
int x = 0;
String conc = "whatever" + "this is" + x; // Concatenation is pretty simple (+ operator).

PFont font; // Global Variable

void setup() {
  size(500, 500);  
 
  // ----------------------------------
  //
  // BASIC STRING MANIPULATION AND TRANSFORMATIONS.
  //
  
  //println(text.toUpperCase());
  //String[] fontList = PFont.list(); // Creates an empty array with the list of fonts given by PFont. 
  //printArray(fontList); // Prints list of fonts available.
  // ----------------------------------
  
  
  
  
  // ----------------------------------
  //
  //SETTING FONTS IN A PROJECT.
  //
  

  font = createFont("Arial", 20, true); //Last argument is anti-aliasing on.
  
  // ----------------------------------


}

void draw() {
  background(0);
  
  textFont(font, 36); //font and font size.
  fill(255);
  
  textAlign(CENTER);
  text("Centered", width/2, height/2);
  
}
