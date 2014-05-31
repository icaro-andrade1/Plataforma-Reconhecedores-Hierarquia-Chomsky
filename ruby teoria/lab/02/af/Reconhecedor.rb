$: << "C:/ruby teoria/lab/02/af"
require 'Automato'

class Reconhecedor
	attr_accessor :automato
	
	def initialize( estadoInicial, estadosFinais )
		instanciarEstruturaEspecifica()
		instanciarAutomato( estadoInicial, estadosFinais )
	end
	
	def instanciarEstruturaEspecifica()
	end
	
	def instanciarAutomato( estadoInicial, estadosFinais)
		#raise NotImplementedError.new("'instanciarAutomato()' nao pode ser execultado" )
	end
	
	def iniciar( cadeia )
		@automato.iniciar( cadeia )
	end
	
	def analisar()
		@subEspacoAutomatos = @automato.execultar()
	end
	
	def reconheceu?()
		reconheci = false
		@subEspacoAutomatos.each do |automato|
			reconheci = true if( condicaoDoAutomato?(automato) )
		end
		
		return reconheci
	end
	
	def condicaoDoAutomato?(automato)
		return (automato.consulta.atingiuEOF?()&&
				automato.consulta.estaEmEstadoFinal?())
	end
end