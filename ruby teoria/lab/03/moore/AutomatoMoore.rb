$: << "C:/ruby teoria/lab/03/afd"
require 'AutomatoDeterministico'
$: << "C:/ruby teoria/lab/03/moore/servico"
require 'MovimentacaoMoore'

class AutomatoMoore < AutomatoDeterministico
	attr_accessor :moore
	
	def criarVinculo( moore )
		@moore = moore
	end
	
	def instanciarMovimentacao()
		@movimentacao = MovimentacaoMoore.new( self )
	end
end