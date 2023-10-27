void main(List<String> args) {
  int numero = -12;
  print(numero.ePositivo());
  print(numero.eNegativo());
}

extension IntExtension on int {

  bool ePositivo(){
    return this >= 0;
  }
  bool eNegativo(){
    return this < 0;
  }

}