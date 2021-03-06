class GramaticaLivreContexto
	def initialize()
		@producoes = {}
	end
	def adicionarProducao( producao )
		@producoes.update( producao )
	end
	
	def derivar ( formaInicial, n )
		formasSentenciais = [ formaInicial ]
		derivacoes = []
		(1..n).each do |i|
			formasSeguintes = []
			formasSentenciais.each do |w|
				formasDeW = aplicarProducoesEm( w )
				derivacoes << { w => formasDeW }
				formasSeguintes |= formasDeW
			end
			formasSentenciais = formasSeguintes
		end
		return derivacoes
	end
	
	def aplicarProducoesEm( w )
		formasSentenciais = []
		@producoes.each do |ladoEsquerdo,ladosDireitos|
			formasSentenciais |=
				calcularFormasSentenciaisDe(
					w, [ladoEsquerdo,ladosDireitos] )
		end
		return formasSentenciais
	end
	
	def calcularFormasSentenciaisDe( w, producoes )
		ladoEsquerdo, ladosDireitos = producoes
		formasSentenciais = []
		ladosDireitos.each do |ladoDireito|
			formaSentencial = w.sub(ladoEsquerdo, ladoDireito )
			if( formaSentencial != w )
				formasSentenciais |= [formaSentencial]
			end
		end
		return formasSentenciais
	end
end