$: << "C:/ruby teoria/lab/02/af"
require 'FitaLimitada'

class FitaLP < FitaLimitada
	def iniciar( cadeia )
		@celulas = ["<"] + cadeia.split() + [">"]
		@cursor = 1
	end
	
	def ler()
		return @celulas[ @cursor ]
	end
	
	def avancar()
		n = @celulas.length - 2
		@cursor += 1 if( (0 ..n).include?( @cursor ) )
	end
	
	def atingiuEOF?()
		return @celulas[ @cursor ] == ">"
	end
	def configuracao?()
		simboloCorrente = @celulas[@cursor]
		prefixo = ""
		sufixo = ""
		n = @celulas.length
		(0 .. n-1).each { |i|
			prefixo += @celulas[i]+" " if( i < @cursor )
			sufixo += @celulas[i]+" " if( i > @cursor )
		}
		return "(%s, %s[%s]%s"%
			[@cursor, prefixo, simboloCorrente, sufixo]
	end
	
	def to_s()
		return @celulas.join( " " )
	end
end