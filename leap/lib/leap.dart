class Leap {
  // Put your code here
  bool leapYear(int year){
    if(year % 4 != 0){
      return false;
    }
    if(year % 100 == 0){
      return false;
    }else if(year % 400 == 0){
      return true;
    }else {
      return true;
    }
  }
}
