import 'dart:io';

void main(List<String> args) {
  List<int> listaNumeros = [];

  try {
    while (true) {
      print('Informe um número inteiro:');
      listaNumeros.add(int.parse(stdin.readLineSync()!));
    }
  } catch (e) {
    print(listaNumeros);
  }
}
