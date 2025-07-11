class Solution {
  List<int> plusOne(List<int> digits) {
    int n = digits.length; 
    for (int i = n - 1; i >= 0; i--) {
      if (digits[i] < 9) { 
        digits[i]++;    
        return digits; 
      } else {  
        digits[i] = 0; 
      }
    }
     
    List<int> result = [1];  
     result.addAll(digits);
    return result; 
  }
}