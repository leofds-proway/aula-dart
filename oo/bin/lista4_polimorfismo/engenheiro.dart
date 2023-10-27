
import 'funcionario.dart';

class Engenheiro extends Funcionario {

  Engenheiro({required super.nome, required super.cpf, required super.salario});
  
  @override
  double calcularBonificacao(){
    return salario * 0.14;
  }

  @override
  String toString() {
    return 'Engenheiro(nome: $nome, cpf:$cpf, salario: $salario, bonificação: ${calcularBonificacao()})';
  }
}