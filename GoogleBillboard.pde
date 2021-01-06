public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
  String digits;
  double dNum;
    System.out.println("First 10 digit prime number in e is");
    for(int i = 2; i < e.length() - 10; i++){
      digits = e.substring(i, i + 10);
      dNum = Double.parseDouble(digits);
      if(isPrime(dNum) == true){
        System.out.println(dNum);
        break;
      }
    }
    //
    System.out.println("PART 2");
    int[] array = new int[10];
    int counter = 0;
    for(int b = 2; b < e.length(); b++){
      int sum = 0;
    for(int a = 0; a < 10; a++){
      if(counter == 5){
        break;
      }
      array[a] = Integer.parseInt(e.substring((a + b), (a + b) + 1));
      sum = sum + array[a];
    }
    if(sum == 49){
      System.out.println(e.substring(b, b+10));
      counter = counter + 1;
    } 
    }
    System.out.print(" is the 5th 10-digit sequence whose digits add up to 49.");
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
  boolean Prime = true;
  if(dNum < 2){
    Prime = false;
  }
  for(int i = 2; i <= Math.sqrt(dNum); i++){
    if(dNum % i == 0){
      Prime = false;
    }
  }
  return Prime;
} 
