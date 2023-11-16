
void main(List<String> args) {
  
  Map<String, List<Pessoa>> mapa = {
    'Blumenau': [Pessoa('Pedro',20,'Solteiro'), Pessoa('Joana',19,'Solteiro'), Pessoa('Gilmar',40,'Casado')],
    'Indaial': [Pessoa('Afonso',55,'Casado'), Pessoa('Mário',46,'Solteiro')],
    'Brusque': [Pessoa('Ivonilson',35,'Solteiro')],
    'Gaspar': [Pessoa('Laura',27,'Casada'), Pessoa('Daniele',33,'Solteiro'), Pessoa('Nilson',18,'Solteiro')],
  };

  print('a)');
  final pessoas = mapa['Gaspar'];
  if(pessoas != null){
    pessoas.forEach((pessoa) => print(pessoa.nome));
  }

  print('\nb)');
  String? cidade;
  int maiorIdade = 0;
  mapa.forEach((key, value) {
    value.forEach((pessoa) { 
      if(pessoa.idade > maiorIdade){
        maiorIdade = pessoa.idade;
        cidade = key;
      }
    });
  });
  if(cidade != null){
    print('$cidade é a cidade com a pessoa mais velha');
  }

  print('\nc)');
  String? nomePessoaMaisJovem;
  int menorIdade = 1000;
  mapa.forEach((key, value) {
    value.forEach((pessoa) { 
      if(pessoa.idade < menorIdade){
        menorIdade = pessoa.idade;
        nomePessoaMaisJovem = pessoa.nome;
      }
    });
  });
  if(nomePessoaMaisJovem != null){
    print('$nomePessoaMaisJovem é a pessoa mais jovem');
  }

  print('\nd)');
  mapa.forEach((key, value) {
    print('$key possui ${value.length} habitantes');
  });
}

class Pessoa {
  String nome;
  int idade;
  String estadoCivil;

  Pessoa(this.nome, this.idade, this.estadoCivil);

  @override
  String toString() {
    return 'Pessoa(nome=$nome, idade=$idade, estadoCivil=$estadoCivil)';
  }
}