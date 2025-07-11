class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    Map<String, String> bracketMap = {
      ')': '(',
      '}': '{',
      ']': '[',
    };

    for (int i = 0; i < s.length; i++) {
      String char = s[i]; 
      if (char == '(' || char == '{' || char == '[') {
        stack.add(char);
      }
      else if (char == ')' || char == '}' || char == ']') {
        if (stack.isEmpty) {
          return false;
        }
        String lastOpenBracket = stack.removeLast();
        if (bracketMap[char] != lastOpenBracket) {
          return false;  
        }
      }
    }

    return stack.isEmpty;
  }
}