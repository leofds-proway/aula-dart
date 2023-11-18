
Stream<int> oddMumber(int num) async* {
  int k = num;
  while (k > 0) {
    yield k--;
  }
}

void main(List<String> args) {
  Stream<int> values = oddMumber(5);
  values.forEach((element) {
    //print('X ' * num);
    String s = "";
    for(int i = 0 ; i < element ; i++){
      s += "X ";
    }
    print(s);
  });
  print('FIM');
}
