$: << "C:/ruby teoria/lab/02/af/servico"
require 'Consulta'

class ConsultaAPD < Consulta
	def pilhaVazia?()
		return @automato.pilha.vazia?()
	end
	
	def configuracao?()
		return "(%s,%s)"% [super(), @automato.pilha.configuracao?()]
		
	end
end