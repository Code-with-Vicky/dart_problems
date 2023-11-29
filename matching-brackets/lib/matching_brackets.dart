class MatchingBrackets {
  bool isPaired(String input) {
    List<String> stack = [];
    for(int i = 0 ; i < input.length; i++){
      String ch = input[i];
      if(_isOpenBracket(ch)) {
        stack.add(ch);
      }else if(_isCloseBracket(ch)){
        if(stack.isEmpty) {
          return false;
        }
        final open = stack.last;
        final close = ch;
        if(_isPair(open, close)) {
          stack.removeLast();
        }else {
          return false;
        }
      }
    }
    return stack.isEmpty;
  }

  bool _isOpenBracket(String ch) {
    return ch == "[" || ch == "{" || ch == "(";
  }

  bool _isCloseBracket(String ch){
    return ch == "]" || ch == "}" || ch == ")";
  }

  bool _isPair(String open, String close) {
    if(open == "[" && close == "]"){
      return true;
    }
    if(open == "{" && close == "}"){
      return true;
    }
    if(open == "(" && close == ")"){
      return true;
    }
    return false;
  }
}
