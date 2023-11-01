import 'cantar_mixin.dart';
import 'excrita_mixin.dart';
import 'leitura_mixin.dart';
import 'pessoa.dart';

class Compositor extends Pessoa with Cantar, Escrita, Leitura {

  @override
  void canta(String letra) {

  }

  @override
  void escrever(String texto) {

  }

  @override
  void ler(String topico) {

  }

}