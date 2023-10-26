
import 'conta.dart';

class ContaCorrente implements Conta {

  double _saldo = 0;
  double _limite = 200;

  @override
  double get saldo {
    return _saldo;
  }

  @override
  depositar(double valor) {
    _saldo += valor;
  }

  @override
  bool sacar(double valor) {
    return false;
  }

}