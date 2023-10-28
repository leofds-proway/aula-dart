
void main(List<String> args) {
  Colaborador colaborador1 = Colaborador();
  Colaborador colaborador2 = Colaborador();
  print(colaborador1.identificador); // Exibe 1
  print(colaborador2.identificador); // Exibe 2
}

class Colaborador {

  static int contador = 0;
  int identificador = 0;

  Colaborador(){
    identificador = ++contador;
  }
}