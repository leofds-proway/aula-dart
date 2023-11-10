
import 'dart:io';

void main(List<String> args) {
  try {
    nivel1();
  } catch (e) {
    print('Erro');
  }
}

void nivel1(){
  try {
    nivel2();
  } on FormatException catch (e){
    print('Falha ao converter');
  }
}

void nivel2(){
  print('Informe o numero 1:');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Informe o numero 2:');
  int num2 = int.parse(stdin.readLineSync()!);
  print('O resultado da divisão é: ${num1 ~/ num2}');
}