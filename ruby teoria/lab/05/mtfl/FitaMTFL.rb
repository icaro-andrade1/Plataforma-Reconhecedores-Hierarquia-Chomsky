$: << "C:/ruby teoria/lab/04/ape"
require 'FitaLP'

class FitaMTFL < FitaLP
	def iniciar( cadeia )
		@celulas = ["<"] + cadeia.split(//) + [">"]
		@cursor = 1
	end
	
	def escrever( simbolo )
		@celulas[ @cursor] = simbolo
	end
end