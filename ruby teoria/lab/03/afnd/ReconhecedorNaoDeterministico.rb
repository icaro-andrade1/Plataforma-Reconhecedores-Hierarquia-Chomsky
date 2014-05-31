$: << "C:/ruby teoria/lab/02/af"
require 'Reconhecedor'
$: << "C:/ruby teoria/lab/03/afnd"
require 'AutomatoNaoDeterministico'

class ReconhecedorNaoDeterministico < Reconhecedor
	def instanciarAutomato( estadoInicial, estadosFinais )
		@automato = AutomatoNaoDeterministico.new(
							estadoInicial, estadosFinais )
	end
end