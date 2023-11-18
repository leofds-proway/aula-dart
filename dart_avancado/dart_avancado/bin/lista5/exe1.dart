
Iterable<String> tabuada(int num) sync* {
  for(int i = 1 ; i <= 10 ; i++){
    yield '$num x $i = ${i * num}';
  }
}

void main(List<String> args) {
  Iterable<String> values = tabuada(4);
  for (String line in values) {
    print(line);
  }
  print('FIM');
}
