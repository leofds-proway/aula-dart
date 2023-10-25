
import 'funcionario.dart';

class Supervisor extends Funcionario {
  
  Supervisor({required super.nome, required super.cpf, required super.salario});

  @override
  double calcularBonificacao(){
    return salario * 0.12;
  }

  @override
  String toString() {
    return 'Supervisor(nome: $nome, cpf:$cpf, salario: $salario, bonificação: ${calcularBonificacao()})';
  }
}