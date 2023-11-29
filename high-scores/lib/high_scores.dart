class HighScores {
  List<int> scores;
  HighScores(this.scores);

  int latest(){
    return scores.last;
  }

  int personalBest(){
    int max = scores.first;
    for(int item in scores){
      if(item > max){
        max = item;
      }
    }
    return max;
  }

  List<int> personalTopThree(){
    List<int> copyScores = [];
    for(int item in scores){
      copyScores.add(item);
    }
    copyScores.sort((a,b) => b-a);
    List<int> topThree = [];
    for(int item in copyScores) {
      topThree.add(item);
      if(topThree.length == 3){
        break;
      }
    }
    return topThree;
  }
}
