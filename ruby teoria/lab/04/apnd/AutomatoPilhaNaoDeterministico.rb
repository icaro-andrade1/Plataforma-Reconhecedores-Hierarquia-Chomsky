$: << "C:/ruby teoria/lab/04/apd"
require 'AutomatoPilha'
$: << "C:/ruby teoria/lab/04/apnd/servico"
require 'MovimentacaoAPND'

class AutomatoPilhaNaoDeterministico < AutomatoPilha
	def instanciarMovimentacao()
		@movimentacao = MovimentacaoAPND.new( self )
	end
end