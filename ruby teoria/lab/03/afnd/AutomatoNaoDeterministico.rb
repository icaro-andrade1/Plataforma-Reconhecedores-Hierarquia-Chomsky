$: << "C:/ruby teoria/lab/02/af"
require 'Automato'
require 'FitaLimitada'
$: << "C:/ruby teoria/lab/03/afnd/servico"
require 'MovimentacaoNaoDeterministica'

class AutomatoNaoDeterministico < Automato
	def instanciarEntrada()
		@entrada = FitaLimitada.new()
	end
	
	def instanciarMovimentacao()
		@movimentacao = MovimentacaoNaoDeterministica.new( self )
	end
	
	def adicionarTransicao( transicao )
		@transicoes.update( transicao )
	end
end