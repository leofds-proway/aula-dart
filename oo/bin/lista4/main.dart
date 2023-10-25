import 'dart:io';

import 'engenheiro.dart';
import 'funcionario.dart';
import 'gerente.dart';
import 'supervisor.dart';
import 'total_binificacoes.dart';

void main(List<String> args) {
  
  List<Funcionario> listaFuncionarios = [];
  List<Gerente> listaGerentes = [];
  List<Engenheiro> listaEngenheiros = [];
  List<Supervisor> listaSupervisores = [];

  // listaFuncionarios = [Funcionario(nome: 'Leo', cpf: '111', salario: 1000)];
  // listaGerentes = [Gerente(nome: 'Ivo', cpf: '222', salario: 1000)];
  // listaEngenheiros = [Engenheiro(nome: 'Nestor', cpf: '333', salario: 1000)];
  // listaSupervisores = [Supervisor(nome: 'Aroldo', cpf: '444', salario: 1000)];

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
            listaGerentes.add( Gerente(nome: nome, cpf: cpf, salario: salario) );
            break;
          case '3':
            listaEngenheiros.add( Engenheiro(nome: nome, cpf: cpf, salario: salario) );
            break;
          case '4':
            listaSupervisores.add( Supervisor(nome: nome, cpf: cpf, salario: salario) );
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
  for(int i = 0 ; i < listaFuncionarios.length ; i++){    // For tradicional com indices
    print(listaFuncionarios[i]);
    totalBonificacoes.add(listaFuncionarios[i].calcularBonificacao());
  }

  print('Gerentes:');
  for(final gerente in listaGerentes){    //For reduzido
    print(gerente);
    totalBonificacoes.add(gerente.calcularBonificacao());
  }

  print('Engenheiros:');
  listaEngenheiros.forEach((engenheiro){   //ForEach
    print(engenheiro);
    totalBonificacoes.add(engenheiro.calcularBonificacao());
  });

  print('Supervisores:');
  listaSupervisores.forEach((supervisor){
    print(supervisor);
    totalBonificacoes.add(supervisor.calcularBonificacao());
  });

  print('Total das bonificações: ${totalBonificacoes.getValorTotal().toStringAsFixed(2)}');
}