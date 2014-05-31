$: << "C:/ruby teoria/lab/02/af/servico"
require 'Clonagem'
class Pilha
	def initialize()
		@conteudo = ["Z0"]
	end
	
	def pop()
		return @conteudo.pop
	end
	
	def push( lista )
		@conteudo += lista
	end
	
	def vazia?()
		return @conteudo == []
	end
	
	def configuracao?()
		return "(" + @conteudo.inspect() + ")"
	end
	
	def clonar()
		return Clonagem.new().clonar( self )
	end
	
	def top()
		cont = @conteudo.length()
		aux = @conteudo[cont-1]
	
		return aux
		
	end
end