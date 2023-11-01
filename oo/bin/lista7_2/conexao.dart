

class Conexao {
  Conexao._privateConstructor();

  static final Conexao _instance = Conexao._privateConstructor();

  factory Conexao() {
    return _instance;
  }

  bool execute(String cmd){
    print('comando: $cmd');
    return true;
  }
}

