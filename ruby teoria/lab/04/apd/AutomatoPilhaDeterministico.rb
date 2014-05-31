$: << "C:/ruby teoria/lab/04/apd/servico"
require 'MovimentacaoAPD'
$: << "C:/ruby teoria/lab/04/apd"
require 'AutomatoPilha'

class AutomatoPilhaDeterministico < AutomatoPilha
	def instanciarMovimentacao()
		@movimentacao = MovimentacaoAPD.new( self )
	end
	
end
