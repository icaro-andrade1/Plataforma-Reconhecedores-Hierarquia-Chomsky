$: << "C:/ruby teoria/lab/02/af"
require 'Reconhecedor'
$: << "C:/ruby teoria/lab/05/aa"
require 'AutomatoAdaptativo'

class ReconhecedorAA < Reconhecedor
	def instanciarAutomato( estadoInicial, estadosFinais )
		@automato = 
			AutomatoAdaptativo.new( estadoInicial, estadosFinais )
	end
	#critério de reconhecimento
end