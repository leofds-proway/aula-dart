
import 'dart:io';

class Queue<T> {
  List<T> _queue = [];

  insert(T value) {
    _queue.add(value);
  }

  T? remove() {
    return _queue.isNotEmpty ? _queue.removeAt(0) : null;
  }
}

void main(List<String> args) {
  Queue<String> fila = Queue();

  String opc;
  while((opc = menu()) != "3"){
    switch(opc){
      case '1': 
        print('Informe o nome:');
        String nome = stdin.readLineSync()!;
        if(nome.isNotEmpty){
          fila.insert(nome);
        }
        break;
      case '2': 
        String? nome = fila.remove();
        if(nome != null){
          print('Removido: $nome');
        }else{
          print('Fila vazia');
        }
        break;
      case '3': break;
      default:
        print('Opção inválida!');
    }
  }
}

String menu(){
  print(
'''
Informe a opção:
1. Inserir
2. Remover
3. Sair
''');
  return stdin.readLineSync()!;
}