import 'forma_geometrica.dart';

class Quadrado implements FormaGeometrica {

  double lado;

  Quadrado({required this.lado});

  @override
  double calcArea() {
    return lado * lado;
  }

  @override
  double calcPerimetro() {
    return 4 * lado;
  }


}