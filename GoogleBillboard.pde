public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
  String digits;
  double dNum;
    for(int i = 2; i < e.length() - 10; i++){
      digits = e.substring(i, i + 10);
      dNum = Double.parseDouble(digits);
      if(isPrime(dNum) == true){
        System.out.println(dNum);
        break;
      }
    }
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
