$: << "C:/ruby teoria/lab/03/afnd"
require 'AutomatoNaoDeterministico'
$: << "C:/ruby teoria/lab/03/moore/servico"
require 'MovimentacaoNaoDeterministicaMoore'

class AutomatoMooreNaoDeterministico < AutomatoNaoDeterministico
  attr_accessor :moore
  
  def criarVinculo( moore )
    @moore = moore
  end
  
  def instanciarMovimentacao()
    @movimentacao = MovimentacaoNaoDeterministicaMoore.new( self )
  end
end