$: << "C:/ruby teoria/lab/02/af"
require 'Reconhecedor'
$: << "C:/ruby teoria/lab/03/afd"
require 'AutomatoDeterministico'

class ReconhecedorDeterministico < Reconhecedor
	def initialize( estadoInicial, estadosFinais )
		@automato = AutomatoDeterministico.new( estadoInicial, estadosFinais )
	end
end
