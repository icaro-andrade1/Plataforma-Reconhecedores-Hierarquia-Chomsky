$: << "C:/ruby teoria/lab/03/afd/servico"
require 'MovimentacaoDeterministica'

class MovimentacaoAPD < MovimentacaoDeterministica
	def calcularOndaDeClones()
		ondaDeClones = {}
		e = @automato.consulta.estadoCorrente?()
		s = @automato.entrada.ler()
		z = @automato.pilha.top()
		@automato.transicoes.each do |condicaoEsperada, instrucao|
			if( condicaoEsperada == [ e, s, z ] )
				clone = @automato.clonar()
				ondaDeClones[ clone ] = (instrucao << "A")
			elsif( condicaoEsperada == [ e, "", z ] )
				clone = @automato.clonar()
				ondaDeClones[ clone ] = instrucao
			end
		end
		return ondaDeClones
	end
	
	def mover( instrucao )
		@automato.pilha.pop()
		@automato.pilha.push( instrucao[1] )
		@automato.estadoCorrente = instrucao[0]
		if( instrucao.size() > 2 )
			@automato.entrada.avancar()
		end
	end
end