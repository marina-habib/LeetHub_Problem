class Solution {
  bool isPalindrome(int x) {
      if (x < 0 || (x % 10 == 0 && x != 0)) {
      return false;  
    }
    int prianderome=x;
    int reven=0;

    while(prianderome > reven){
     int digit= prianderome % 10;
      reven= reven*10 + digit ;
     prianderome = prianderome ~/10;
    }
    if (prianderome == reven || prianderome == reven ~/ 10){
        return true;
    }

    return false;
  }
}