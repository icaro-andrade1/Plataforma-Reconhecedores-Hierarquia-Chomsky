$: << "C:/ruby teoria/lab/03/afnd"
require 'AutomatoNaoDeterministico'
$: << "C:/ruby teoria/lab/06/mtfi"
require 'FitaIlimitada'
$: << "C:/ruby teoria/lab/06/mtfi/servico"
require 'MovimentacaoMTFI'

class MaquinaTuringFitaIlimitada < AutomatoNaoDeterministico
	def instanciarEntrada()
		@entrada = FitaIlimitada.new()
	end
	
	def instanciarMovimentacao()
		@movimentacao = MovimentacaoMTFI.new( self )
	end
end
