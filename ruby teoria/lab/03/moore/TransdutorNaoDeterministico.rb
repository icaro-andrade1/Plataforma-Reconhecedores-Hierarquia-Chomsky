$: << "C:/ruby teoria/lab/03/afnd"
require 'ReconhecedorNaoDeterministico'

class TransdutorNaoDeterministico < ReconhecedorNaoDeterministico
  attr_accessor :lambda
  
  def instanciarEstruturaEspecifica()
    @lambda = {}
  end
  
  def adicionarLambda( traducao )
    @lambda.update( traducao )
  end
  
  def traduzir()
    analisar()
  end
  
end