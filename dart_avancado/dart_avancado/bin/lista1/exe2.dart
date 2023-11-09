import 'dart:io';

class CustomException implements Exception {
  String cause;
  CustomException(this.cause);
}

void main(List<String> args) {
  List<String> listaNomes = [];

  String opc;
  while ((opc = solicitaMenu()) != '4') {
    switch (opc) {
      case '1':
        adicionaNome(listaNomes);
        break;
      case '2':
        try {
          buscarNomePorIndice(listaNomes);
        } on FormatException catch (e) {
          print('Indice inválido');
        } on RangeError catch (e) {
          print('Indice não exite');
        }
        break;
      case '3':
        listar(listaNomes);
        break;
      case '4':
        break;
      default:
        print('Opção inválida!');
    }
  }
}

String solicitaMenu() {
  print('''
Informe a opção desejada:
1. Adicionar nome:
2. Exibir um nome pelo indice:
3. Listar
4. Sair
''');
  return stdin.readLineSync()!;
}

adicionaNome(List<String> lista) {
  print('Informe o nome:');
  String nome = stdin.readLineSync()!;
  if (nome.isNotEmpty) {
    lista.add(nome);
  } else {
    print('Nome inválido!');
  }
}

buscarNomePorIndice(List<String> lista) {
  print('Informe o indice');
  int indice = int.parse(stdin.readLineSync()!);
  print(lista[indice]);
}

listar(List<String> lista) {
  print(lista);
}
