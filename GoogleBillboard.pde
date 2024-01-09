public void setup()
{
  int i = 0;
  String digits = e.substring(2, 12);
  double dNum = Double.parseDouble(digits);
  while (isPrime(dNum) == false) {
    digits = e.substring(2+i, 12+i);
    dNum = Double.parseDouble(digits);
    i++; 
  }
  System.out.println(digits.substring(0,10));
}
public boolean isPrime(double num) {
  if (num < 2) {
    return false;
  }
  for (int i = 2; i <= Math.sqrt(num); i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
