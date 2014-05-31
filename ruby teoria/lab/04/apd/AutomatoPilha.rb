$: << "C:/ruby teoria/lab/03/afd"
require 'AutomatoDeterministico'
$: << "C:/ruby teoria/lab/04/apd"
require 'Pilha'
$: << "C:/ruby teoria/lab/04/apd/servico"
require 'ConsultaAPD'

class AutomatoPilha < Automato
	attr_accessor :pilha
	
	def instanciarEstruturaEspecifica()
		@pilha = Pilha.new()
	end
	
	def adicionarTransicao( transicao )
		@transicoes.update( transicao )
	end
	
	def instanciarEntrada()
		@entrada = FitaLimitada.new()
	end
	
	def instanciarConsulta()
		@consulta = ConsultaAPD.new( self )
	end
end