$: << "C:/ruby teoria/lab/03/afd/"
require "AutomatoDeterministico"
$: << "C:/ruby teoria/lab/03/mealy/servico"
require "MovimentacaoMealy"

class AutomatoMealy < AutomatoDeterministico
  attr_accessor :mealy
  
  def criarVinculo(mealy)
    @mealy = mealy
  end
  
  def instanciarMovimentacao()
    @movimentacao = MovimentacaoMealy.new(self)
  end
end