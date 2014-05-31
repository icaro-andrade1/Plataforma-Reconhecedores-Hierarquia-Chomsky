$: << "C:/ruby teoria/lab/02/af"
require 'Reconhecedor'

$: << "C:/ruby teoria/lab/04/apnd"
require 'AutomatoPilhaNaoDeterministico'

class ReconhecedorAPND < Reconhecedor
	def instanciarAutomato( estadoInicial, estadosFinais )
		@automato = AutomatoPilhaNaoDeterministico.new( estadoInicial, estadosFinais )
	end
end