
import 'dart:io';

import 'circulo.dart';
import 'forma_geometrica.dart';
import 'quadrado.dart';
import 'retangulo.dart';

void main(List<String> args) {
  
  List<FormaGeometrica> formas = [];

  print('Informe o numero de formas:');
  int num = int.parse(stdin.readLineSync()!);

  for(int i = 0 ; i < num ; i++){
    print('Qual é a forma:\n1. Quadrado\n2. Retângulo\n3. Circulo');
    String tipo = stdin.readLineSync()!;
    switch(tipo){
      case '1':
        criarQuadrado(formas);
        break;
      case '2':
        criarRetangulo(formas);
        break;
      case '3':
        criarCirculo(formas);
        break;
      default:
        print('Opção inválida!');
    }
  }
  exibirResultado(formas);
}

criarQuadrado(List<FormaGeometrica> formas){
  print('Informe o lado:');
  double lado = double.parse(stdin.readLineSync()!);
  formas.add( Quadrado(lado: lado) );
}

criarRetangulo(List<FormaGeometrica> formas){
  print('Informe a base:');
  double base = double.parse(stdin.readLineSync()!);
  print('Informe a altura:');
  double altura = double.parse(stdin.readLineSync()!);
  formas.add( Retangulo(base: base, altura: altura) );
}

criarCirculo(List<FormaGeometrica> formas){
  print('Informe o raio:');
  double raio = double.parse(stdin.readLineSync()!);
  formas.add( Circulo(raio: raio) );
}

exibirResultado(List<FormaGeometrica> formas){
  print('');

  //a
  print('Formas:');
  formas.forEach((element) {
    if(element is Quadrado) {
      Quadrado quadrado = element;
      print('Quadrado, lado: ${quadrado.lado}');
    } else if(element is Retangulo) {
      Retangulo retangulo = element;
      print('Retângulo, base: ${retangulo.base}, altura: ${retangulo.altura}');
    } else if(element is Circulo) {
      Circulo circulo = element;
      print('Círculo, raio: ${circulo.raio}');
    } else {
      print('Forma inválida');
    }
  });
  print('');

  //b
  print('Perímetros:');
  formas.forEach((element) {
    print(element.calcPerimetro().toStringAsFixed(2));
  });
  print('');

  //c
  print('Áreas:');
  formas.forEach((element) {
    print(element.calcArea().toStringAsFixed(2));
  });
  print('');
}