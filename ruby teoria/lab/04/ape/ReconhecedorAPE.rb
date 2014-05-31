$: << "C:/ruby teoria/lab/02/af"
require 'Reconhecedor'
$: << "C:/ruby teoria/lab/04/ape"
require 'APEstruturado'

class ReconhecedorAPE < Reconhecedor
	def instanciarAutomato( estadoInicial, estadosFinais )
		@automato = AutomatoPilhaEstruturado.new( estadoInicial, estadosFinais )
	end
	
	def condicaoDoAutomato?(automato)
		return (automato.consulta.atingiuEOF?()&&
			automato.consulta.estaEmEstadoFinal?() &&
			automato.pilha.top() == "Z0")
	end
	
end