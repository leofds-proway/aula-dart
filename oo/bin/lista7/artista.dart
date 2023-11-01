
import 'cantar_mixin.dart';
import 'dancar_mixin.dart';
import 'pessoa.dart';

class Artista extends Pessoa with Cantar, Dancar {

  @override
  void canta(String letra) {

  }

  @override
  void danca(int passos) {

  }

}