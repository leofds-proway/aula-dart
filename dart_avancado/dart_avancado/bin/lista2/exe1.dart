void main(List<String> args) {
  hello();
  mostrar('Fusca');
  print(duplicar(20));
}

hello() => print('Hello');

mostrar(String texto) => print(texto);

int duplicar(int valor) => valor * 2;
