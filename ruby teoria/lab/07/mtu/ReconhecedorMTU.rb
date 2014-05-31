$: << "C:/ruby teoria/lab/02/af"
require 'Reconhecedor'
$: << "C:/ruby teoria/lab/07/mtu"
require 'MaquinaTuringUniversal'

class ReconhecedorMTU < Reconhecedor
	def initialize( estadoInicial, estadosFinais )
		@automato = MaquinaTuringUniversal.new(estadoInicial, estadosFinais )
	end
	
	def condicaoDoAutomato?( automato )
		return automato.consulta.estaEmEstadoFinal?()
	end
end