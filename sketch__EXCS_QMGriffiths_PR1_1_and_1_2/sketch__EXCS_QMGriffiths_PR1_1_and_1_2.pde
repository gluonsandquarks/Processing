
// Basic probabilities.
String pi = "314159265358979323846264338327950288419716939937510582097494459230781640628620899862803482534211706798214808651328230664709384460955058223172535940812848";
String pi25 = pi.substring(0, 25);
char[] list = pi25.toCharArray();

void setup(){
  int[] data = {14, 15, 16, 16, 16, 22, 22, 24, 24, 25, 25, 25, 25, 25};
  float sum = 0.0;
  float deltaj2sum = 0;
  int rep = 0;
  
  // Obtaining average
  
  for (int i = 0; i < data.length; i++) {
    sum += data[i];
  }
  float avg = sum/data.length;
  println("avg = " + avg);
  
  // Obtaining deltaj for every j in array.
  
  for (int i = 0; i < data.length; i++) {
    float deltaj = data[i] - avg;
    println("deltaj" + (i+1) + " = " + deltaj);
    deltaj2sum += pow(deltaj, 2);
  }
  
  // Obtaining sigma^2 via the average of deltaj^2.
  println("deltaj^2 sum = " + deltaj2sum);
  println("sigma^2 = " + deltaj2sum/data.length);
  
  
  // Probability of getting each digit in the first 25 digits of pi.
  
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < list.length; j++) {
      if ((int(list[j]) - int('0')) == i) {
        rep += 1;
      }
    }
    println(i + " : " + rep);
    print("-> " + rep + "/" + list.length + "\n");
    rep = 0;
  }
}
