$: << "C:/ruby teoria/lab/04/glc"
require 'GramaticaLivreContexto'
class GramaticaGreibach < GramaticaLivreContexto
	def calcularSubstituicoes( w )
		substituicoes = @producoes["S"]
		
		n = w.length()
		(1..(n-1)).each do |i|
			formasSeguintes = []
			substituicoes.each do |formaSentencial|
				formasDeW =
					aplicarProducoesEm(
						formaSentencial, formaSentencial[i,1] )
				formasSeguintes |= formasDeW
			end
			substituicoes = formasSeguintes
		end
		
		return substituicoes
	end
	
	def aplicarProducoesEm( w, ladoEsquerdo )
		return [] if( @producoes[ ladoEsquerdo ].nil? )
		ladosDireitos = @producoes[ ladoEsquerdo ]
		return calcularFormasSentenciaisDe(
			w, [ladoEsquerdo, ladosDireitos] )
	end
	
end