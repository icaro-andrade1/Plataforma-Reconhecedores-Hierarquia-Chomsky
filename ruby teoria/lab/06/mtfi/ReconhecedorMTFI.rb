$: << "C:/ruby teoria/lab/02/af"
require 'Reconhecedor'
$: << "C:/ruby teoria/lab/06/mtfi"
require 'MaquinaTuringFitaIlimitada'

class ReconhecedorMTFI < Reconhecedor
	def instanciarAutomato( estadoInicial, estadosFinais )
		@automato = MaquinaTuringFitaIlimitada.new( estadoInicial, estadosFinais )
	end
	
	def condicaoDoAutomato?( automato )
		return automato.consulta.estaEmEstadoFinal?()
	end
end
