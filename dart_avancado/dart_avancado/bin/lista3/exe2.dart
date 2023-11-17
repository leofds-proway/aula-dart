
import 'dart:io';

void main(List<String> args) {
  solicitaNumero().then((value) {
    print('Valor informado = $value');
  }).catchError((e){
    if(e is MyException){
      print(e.cause);
    }
  });
}

Future<int> solicitaNumero() async {
  print('Informe o valor inteiro:');
  try {
    return int.parse(stdin.readLineSync()!);
  } catch (e) {
    throw MyException('Valor inválido');
  }
}

class MyException implements Exception {
  String cause;
  MyException(this.cause);
}