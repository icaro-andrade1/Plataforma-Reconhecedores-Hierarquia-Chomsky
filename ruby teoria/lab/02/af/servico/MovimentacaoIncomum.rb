$: << "C:/ruby teoria/lab/02/af/servico"
require 'Movimentacao'

class MovimentacaoIncomum < Movimentacao

	def calcularOndaDeClones()
		if(@automato.consulta.estadoCorrente?() == "q0")
			return { @automato => [] }
		end
		
		return {}
	end
	
	def mover( instrucao )
		@automato.entrada.avancar()
		@automato.entrada.avancar()
		@automato.entrada.avancar()
		@automato.estadoCorrente = "q1"
	end
end