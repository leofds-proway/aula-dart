
import 'dart:io';

import 'conta.dart';
import 'conta_corrente.dart';
import 'conta_poupanca.dart';

void main(){
  // Conta conta = ContaPoupanca(); 
  // conta.depositar(100);
  // print(conta.sacar(150));
  // print(conta.saldo);

  Conta conta;

  print('Tipo da conta:\n1. Corrente\n2. Poupança');
  String tipo = stdin.readLineSync()!;
  if(tipo == '1'){
    conta = ContaCorrente();
  } else {
    conta = ContaPoupanca();
  }

  String opc = '';
  while(opc != '4'){
    print('Informe a opção:\n1. Sacar\n2. Depositar\n3. Ver Saldo\n4. Sair');
    opc = stdin.readLineSync()!;
    switch(opc){
      case '1':
        sacar(conta);
        break;
      case '2':
        depositar(conta);
        break;
      case '3':
        exibirSaldo(conta);
        break;
      case '4':
        break;
      default:
        print('Opção inválida!');
    }
  }
}

exibirSaldo(Conta conta){
  print('Saldo (R\$): ${conta.saldo}');
}

depositar(Conta conta){
  print('Informe o valor:');
  double? valor = double.tryParse(stdin.readLineSync()!);
  if(valor != null){
    conta.depositar(valor);
  }else{
    print('Valor inválido!');
  }
}

sacar(Conta conta){
  print('Informe o valor:');
  double? valor = double.tryParse(stdin.readLineSync()!);
  if(valor != null){
    if(conta.sacar(valor)){
      print('Saque realizado com succeso!');
    } else {
      print('Saldo insuficiente!');
    }
  }else{
    print('Valor inválido!');
  }
}
