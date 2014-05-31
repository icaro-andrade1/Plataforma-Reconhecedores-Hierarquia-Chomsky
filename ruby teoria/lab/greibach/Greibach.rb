$: << "C:/ruby teoria/lab/04/glc"
require 'GramaticaGreibach'

class Greibach
	def initialize()
		@glc = GramaticaGreibach.new()
	end
	
	def adicionarProducao( producao )
		@glc.adicionarProducao( producao )
	end
	
	def pertence?( w )
		@substituicoes = calcularSubstituicoes( w )
		return true if( @substituicoes.include?(w) )
		return false
	end
	
	def calcularSubstituicoes( w )
		return @glc.calcularSubstituicoes( w )
	end
end