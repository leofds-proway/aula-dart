
void main(List<String> args) {
  executa((){
    print('FIM');
  });
}

executa(void Function() callback) async {
  await Future.delayed(Duration(seconds: 1));
  callback();
}

