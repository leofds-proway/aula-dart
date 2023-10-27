
void main(List<String> args) {
  Real real = Real();
  real.valor = 10.67;
  print(real.toInt());
  print(real.paraString());
  print(real.paraStringAsFixed(1));
  real.deString('190.987');
  print(real.valor);
}

class Real {
  double valor = 0;
}

extension RealExtension on Real {

  int toInt(){
    return valor.toInt();
  }

  String paraString(){
    return valor.toString();
  }

  String paraStringAsFixed(int digits){
    return valor.toStringAsFixed(digits);
  }

  void deString(String value){
    valor = double.parse(value);
  }
}