
import 'dart:io';

void main(List<String> args) {
  Map<String, String> cidades = {
    '101': 'Blumenau',
    '200': 'Gaspar',
    '300': 'Itajaí',
    '400': 'Florianópolis'
  };

  print('Informe o número da cidade:');
  String? resultado = cidades[stdin.readLineSync()!];
  if(resultado != null){
    print('Cidade: $resultado');
  }else{
    print('Código inválido!');
  }
}