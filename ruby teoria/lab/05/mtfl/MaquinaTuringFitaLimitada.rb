$: << "C:/ruby teoria/lab/03/afnd"
require 'AutomatoNaoDeterministico'
$: << "C:/ruby teoria/lab/05/mtfl"
require 'FitaMTFL'
$: << "C:/ruby teoria/lab/05/mtfl/servico"
require 'MovimentacaoMTFL'

class MaquinaTuringFitaLimitada < AutomatoNaoDeterministico
	def instanciarEntrada()
		@entrada = FitaMTFL.new()
	end
	
	def instanciarMovimentacao()
		@movimentacao = MovimentacaoMTFL.new( self )
	end
end
