// Put your code here
int score(String word){
  String lowerCased = word.toLowerCase();
  int score = 0 ;
  final scoresMap = {
    "aeioulnrst": 1,
    "dg": 2,
    "bcmp": 3,
    "fhvwy": 4,
    "k": 5,
    "jx": 8,
    "qz": 10
  };
  for(int i = 0; i < lowerCased.length; i = i +1){
    String ch = lowerCased[i];
    for(String key in scoresMap.keys){
      if(key.contains(ch)){
        score += scoresMap[key]!;
        break;
      }
    }
  }
  return score;
}


String sayHello([String? name]) {
  if(name == null){
    return "Hello World";
  }else{
    return "Hello $name!";
  }
}