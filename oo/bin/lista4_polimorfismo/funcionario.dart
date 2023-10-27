class Funcionario {
  String nome;
  String cpf;
  double salario;

  Funcionario({required this.nome,required this.cpf,required this.salario});

  double calcularBonificacao(){
    return salario * 0.1;
  }

  @override
  String toString() {
    return 'Funcionario(nome: $nome, cpf:$cpf, salario: $salario, bonificação: ${calcularBonificacao()})';
  }
}