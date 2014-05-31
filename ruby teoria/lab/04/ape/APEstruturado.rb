$: << "C:/ruby teoria/lab/04/apnd"
require 'AutomatoPilhaNaoDeterministico'
$: << "C:/ruby teoria/lab/04/ape"
require 'PilhaAPE'
$: << "C:/ruby teoria/lab/04/ape/servico"
require 'MovimentacaoAPE'

class AutomatoPilhaEstruturado < AutomatoPilhaNaoDeterministico
	def instanciarEstruturaEspecifica()
		@pilha = PilhaAPE.new()
	end
	
	def instanciarMovimentacao()
		@movimentacao = MovimentacaoAPE.new( self )
	end
end