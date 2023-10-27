
class TotalBonificacoes {

  double _totalBonificacoes = 0;

  add(double bonificacao){
    _totalBonificacoes += bonificacao;
  }

  double getValorTotal(){
    return _totalBonificacoes;
  }

}