import 'dart:io';

import 'engenheiro.dart';
import 'funcionario.dart';
import 'gerente.dart';
import 'supervisor.dart';
import 'total_bonificacoes.dart';

void main(List<String> args) {
  
  List<Funcionario> listaFuncionarios = [];

  listaFuncionarios.add(Funcionario(nome: 'Leo', cpf: '111', salario: 1000));
  listaFuncionarios.add(Gerente(nome: 'Ivo', cpf: '222', salario: 1000));
  listaFuncionarios.add(Engenheiro(nome: 'Nestor', cpf: '333', salario: 1000));
  listaFuncionarios.add(Supervisor(nome: 'Aroldo', cpf: '444', salario: 1000));

  TotalBonificacoes totalBonificacoes = TotalBonificacoes();
  
  String opc = '';
  while(opc != '5'){
    print('Informe a opção:\n1. Funcionário\n2. Gerente\n3. Engenheiro\n4. Supervisor\n5. Sair');
    opc = stdin.readLineSync()!;
    switch(opc){
      case '1':
      case '2':
      case '3':
      case '4':
        print('Informe o nome');
        String nome = stdin.readLineSync()!;
        print('Informe o cpf');
        String cpf = stdin.readLineSync()!;
        print('Informe o salário');
        double salario = double.parse( stdin.readLineSync()! );
        switch(opc){
          case '1':
            listaFuncionarios.add( Funcionario(nome: nome, cpf: cpf, salario: salario) );
            break;
          case '2':
            listaFuncionarios.add( Gerente(nome: nome, cpf: cpf, salario: salario) );
            break;
          case '3':
            listaFuncionarios.add( Engenheiro(nome: nome, cpf: cpf, salario: salario) );
            break;
          case '4':
            listaFuncionarios.add( Supervisor(nome: nome, cpf: cpf, salario: salario) );
            break;
        }
        break;
      case '5':
        break;
      default:
        print('Opção inválida!');
    }
  }

  print('Funcionários:');
  listaFuncionarios.forEach((funcionario){
    print(funcionario);
    totalBonificacoes.add(funcionario.calcularBonificacao());
  });

  print('Total das bonificações: ${totalBonificacoes.getValorTotal().toStringAsFixed(2)}');
}