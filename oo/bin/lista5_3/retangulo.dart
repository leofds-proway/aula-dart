
import 'forma_geometrica.dart';

class Retangulo implements FormaGeometrica {

  double base;
  double altura;

  Retangulo({required this.base, required this.altura});

  @override
  double calcPerimetro(){
    return base * altura;
  }

  @override
  double calcArea(){
    return 2*(base * altura);
  }

}