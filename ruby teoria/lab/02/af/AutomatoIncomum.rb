$: << "C:/ruby teoria/lab/02/af"
require 'Automato'

class AutomatoIncomum < Automato
	def instanciarEntrada()
		@entrada = FitaLimitada.new()
	end
	
	def instanciarMovimentacao()
		@movimentacao = MovimentacaoIncomum.new( self )
	end
end