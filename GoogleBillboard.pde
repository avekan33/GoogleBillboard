public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public String digits;
public double dNum;
public void setup()  
{            
     noLoop();  
}  
public void draw()  
{   
	for(int i=2;i<e.length()-10;i++)
	{
		digits = e.substring(i,i+10);
		dNum = Double.parseDouble(digits);
        if(isPrime(dNum) == true)
        {
        	System.out.println("Answer: "+dNum);
        	System.out.println("Number starts at the "+(i-1)+" position after the decimal point");
        }
	}
}  
public boolean isPrime(double num)  
{   
    if(num<=1){ return false;}
  	else
 	{
    	for(int i =2;i<=Math.sqrt(num);i++)
  		{
      		if(num%i == 0){return false;}
  		} 
	}   
    return true;  
} 