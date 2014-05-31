$: << "C:/ruby teoria/lab/02/af/servico"
require 'Movimentacao'

class MovimentacaoDeterministica < Movimentacao
	def calcularOndaDeClones()
	ondaDeClones = {}
	condicaoCorrente = [@automato.consulta.estadoCorrente?(),
						@automato.entrada.ler()]
	
	@automato.transicoes.each do |condicaoEsperada, estadoSeguinte|
		if (condicaoEsperada == condicaoCorrente)
			clone = @automato.clonar()
			ondaDeClones[ clone ] = estadoSeguinte
		end
	end
	return ondaDeClones
	end

	def mover( proximoEstado )
		@automato.estadoCorrente = proximoEstado
		@automato.entrada.avancar()
	end
	
	def adicionarTransicao( transicao )
		@transicoes.update( transicao )
	end
end