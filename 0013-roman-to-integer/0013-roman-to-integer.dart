class Solution {
  int romanToInt(String s) {
    final Map<String, int> romanValues = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    int total = 0;
    int prevValue = 0;  

     
    for (int i = s.length - 1; i >= 0; i--) {
      String char = s[i];  
      int currentValue = romanValues[char]!; 
 
      if (currentValue < prevValue) {
     
        total -= currentValue;
      } else {
        
        total += currentValue;
      }

      
      prevValue = currentValue;
    }

    return total;  
  }
}