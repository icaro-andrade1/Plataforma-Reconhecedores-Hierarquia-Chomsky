$: << "C:/ruby teoria/lab/02/af"
require 'Fita'

class FitaMTU < Fita
	attr_accessor :padrao
	#Interface de instanciação:
	def initialize( padrao )
		super()
		@padrao = padrao
	end
	
	def iniciarCelulas()
		@celulas = "bba"
		@cursor = 0
	end
	
	def iniciarFita()
		iniciarCelulas()
	end
	
	#interface caracteristica:
	def ler()
		simbolos = @celulas.scan( @padrao )
		simbolo = simbolos[@cursor]
		return "bba" if( simbolo.nil? )
		return simbolo
	end
	
	def conteudo?()
		ler()
	end
	
	def escrever( codigo )
		@celulas.gsub!(/bba$/,"")
		simbolos = @celulas.scan( @padrao )
		simbolos[@cursor] = codigo
		@celulas = simbolos.join() + "bba"
	end
	
	def avancar()
		@cursor+=1
	end
	
	def recuar()
		@cursor-=1 if(@cursor > 0 )
	end
	
	def reiniciarCursor()
		@cursor = 0
	end
	
	#interface de consulta:
	
	def configuracao?()
		return "(%s,%s)"%[@cursor,@celulas]
	end
	
	def to_s()
		@celulas
	end
	
end