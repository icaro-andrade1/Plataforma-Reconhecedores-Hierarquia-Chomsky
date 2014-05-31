$: << "C:/ruby teoria/lab/03/afnd/servico"
require 'MovimentacaoNaoDeterministica'

class MovimentacaoMTU < MovimentacaoNaoDeterministica
	def calcularOndaDeClones()
		ondaDeClones = {}
		condicaoCorrente = [@automato.fitaQ.ler(), @automato.entrada.ler()]
		@automato.fitaM.reiniciarCursor()
		transicao = @automato.fitaM.ler()
		while( transicao != "bba" )
			estadoEsperado, simboloEsperado,
			estadoSeguinte, simboloAescrever,
			cursor = @automato.codificacao.separar(transicao)
			
			if( condicaoCorrente == [estadoEsperado, simboloEsperado] )
				clone = @automato.clonar()
				ondasDeClones[ clone ] =
					[estadoSeguinte, simboloAescrever, cursor]
			end
			
			@automato.fitaM.avancar()
			transicao = @automato.fitaM.ler()
		end
		return ondaDeClones
	end
	
	def mover( intrucao )
		@automato.fitaQ.escrever( instrucao[0] )
		@automato.fitaQ.reiniciarCursor()
		@automato.entrada.escrever( intrucao[1] )
		@automato.entrada.avancar() if intrucao[2] == "cc"
		@automato.entrada.recuar() if intrucao[2] == "c"
	end

end