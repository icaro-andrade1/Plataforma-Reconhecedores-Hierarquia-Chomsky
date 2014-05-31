$: << "C:/ruby teoria/lab/03/afd"
require 'ReconhecedorDeterministico'

class Transdutor < ReconhecedorDeterministico
	attr_accessor :lambda
	
	def instanciarEstruturaEspecifica()
		@lambda = {}
	end
	
	def adicionarLambda( traducao )
		@lambda.update( traducao )
	end
	
	def traduzir()
		analisar()
	end
	
end