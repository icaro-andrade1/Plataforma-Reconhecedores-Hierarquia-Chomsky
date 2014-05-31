$: << "C:/ruby teoria/lab/02/af"
require 'Reconhecedor'
$: << "C:/ruby teoria/lab/04/apd"
require 'AutomatoPilhaDeterministico'

class ReconhecedorAPD < Reconhecedor
	def instanciarAutomato( estadoInicial, estadosFinais )
		@automato =	
			AutomatoPilhaDeterministico.new(
				estadoInicial, estadosFinais )
	end
end