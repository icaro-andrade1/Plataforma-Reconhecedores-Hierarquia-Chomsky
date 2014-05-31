$: << "C:/ruby teoria/lab/02/af"
require 'Automato'
require 'FitaLimitada'
$: << "C:/ruby teoria/lab/03/afd/servico"
require 'MovimentacaoDeterministica'

class AutomatoDeterministico <  Automato
	def instanciarEntrada()
		@entrada = FitaLimitada.new()
	end

	def instanciarMovimentacao()
		@movimentacao = MovimentacaoDeterministica.new( self )
	end

end
