class Math{
  double cal1(var temp){
    double x = 9/5*temp+32;
    print(x);
    return x;
  }
  double cal2(var temp){
    double x = temp+273;
    return x;
  }
  double cal3(var temp){
    var x = 5/9*(temp-32);
    return x;
  }
  double cal4(var temp){
    var x = 5/9*(temp-32)+273;
    return x;
  }
  double cal5(var temp){
    var x = temp-273;
    return x;
  }
  double cal6(var temp){
    var x = 9/5*(temp-273)+32;
    return x;
  }
}