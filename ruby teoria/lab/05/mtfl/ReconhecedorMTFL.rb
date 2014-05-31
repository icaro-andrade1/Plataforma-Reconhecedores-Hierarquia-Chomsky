$: << "C:/ruby teoria/lab/02/af"
require 'Reconhecedor'
$: << "C:/ruby teoria/lab/05/mtfl"
require 'MaquinaTuringFitaLimitada'

class ReconhecedorMTFL < Reconhecedor
	def instanciarAutomato( estadoInicial, estadosFinais )
		@automato =
			MaquinaTuringFitaLimitada.new(
				estadoInicial, estadosFinais )
	end
	
	def condicaoDoAutomato?( automato )
		return automato.estaEmEstadoFinal?()
	end
end