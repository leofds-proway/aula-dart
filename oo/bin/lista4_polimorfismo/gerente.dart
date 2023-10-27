import 'funcionario.dart';

class Gerente extends Funcionario {

  Gerente({required super.nome, required super.cpf, required super.salario});

  // Contrutor de Exemplo: redirecionando para o construtor da classe pai
  Gerente.example({required String nome, required String cpf, required double salario}) 
    : super(nome: nome, cpf: cpf, salario: salario);

  @override
  double calcularBonificacao() {
    return salario * 0.15;
  }

  @override
  String toString() {
    return 'Gerente(nome: $nome, cpf:$cpf, salario: $salario, bonificação: ${calcularBonificacao()})';
  }
}