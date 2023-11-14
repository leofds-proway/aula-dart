
import 'dart:io';

import 'package:intl/intl.dart';

void main(List<String> args) {
  hello(() => print('a'));

  confirmacao((opcao) => print('Opção: $opcao'));

  String now = getNow((dt) {
    DateFormat format = DateFormat('HH:mm:ss');
    return format.format(dt);
  });
  print(now);
}

hello(void Function() func){
  func();
}

confirmacao(void Function(String opcao) callback) {
  print('Digite a opção:\n1 - Salvar\n2 - Cancelar');
  String opcao = stdin.readLineSync()!;
  callback(opcao);
}

String getNow(String Function(DateTime dt) converte){
  return converte(DateTime.now());
}