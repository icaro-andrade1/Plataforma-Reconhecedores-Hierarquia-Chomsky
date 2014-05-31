$: << "C:/ruby teoria/lab/02/af/servico"
require 'Movimentacao'

class MovimentacaoNaoDeterministica < Movimentacao
	def calcularOndaDeClones()
		ondaDeClones = {}
		condicaoCorrente = [@automato.consulta.estadoCorrente?(),
							@automato.entrada.ler()]
		@automato.transicoes.each do |condicaoEsperada, estadosSeguintes|
			if( condicaoEsperada == condicaoCorrente )
				estadosSeguintes.each do |estadoSeguinte|
					clone = @automato.clonar()
					ondaDeClones[ clone ] = estadoSeguinte
				end
			end
		end
		return ondaDeClones
	end
	
	def mover ( proximoEstado )
		@automato.estadoCorrente = proximoEstado
		@automato.entrada.avancar()
	end
end