$: << "C:/ruby teoria/lab/04/ape"
require 'FitaLP'

class FitaIlimitada < FitaLP
	attr_accessor :limiteQtdeB
	
	def iniciar( cadeia )
		@celulas = ["<"] + cadeia.split(//) + ["B"]
		@cursor = 1
		@limiteQtdeB = 10
	end
	
	def avancar()
		if( @cursor == (@celulas.size - 1) )
			@celulas << "B"
			@limiteQtdeB = @limiteQtdeB - 1
		end
		throw "Estouro de B's" if( @limiteQtdeB == 0 )
		@cursor += 1
	end
	
	def escrever( simbolo )
		@celulas[ @cursor ] = simbolo
	end
end
