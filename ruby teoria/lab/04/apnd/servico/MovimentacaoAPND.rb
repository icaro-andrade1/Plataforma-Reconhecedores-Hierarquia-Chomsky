$: << "C:/ruby teoria/lab/03/afnd/servico"
require 'MovimentacaoNaoDeterministica'

class MovimentacaoAPND < MovimentacaoNaoDeterministica
	
	def calcularOndaDeClones()
		ondaDeClones = {}
		e = @automato.consulta.estadoCorrente?()
		s = @automato.entrada.ler()
		z = @automato.pilha.top()
		@automato.transicoes.each do |condicaoEsperada, instrucoes|
			if( condicaoEsperada == [ e, s, z] )
				instrucoes.each do |instrucao|
					clone = @automato.clonar()
					ondaDeClones[ clone ] = (instrucao << "A")
				end
			elsif( condicaoEsperada == [ e, "", z ] )
				instrucoes.each do |instrucao|
					clone = @automato.clonar()
					ondaDeClones[ clone ] = instrucao
				end
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