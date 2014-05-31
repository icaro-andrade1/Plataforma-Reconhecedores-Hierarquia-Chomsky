$: << "C:/ruby teoria/lab/02/af/servico"
require 'Consulta'
require 'Clonagem'
require 'Movimentacao'

class Automato
	attr_accessor :entrada
	attr_accessor :transicoes
	attr_accessor :estadosFinais
	attr_accessor :estadoCorrente
	attr_accessor :movimentacao
	attr_accessor :consulta
	
	def initialize( estadoInicial, estadosFinais )
		instanciarEstruturaEspecifica()
		instanciarEntrada()
		instanciarTransicoes()
		instanciarEstadosFinais(estadosFinais)
		instanciarEstadoCorrente(estadoInicial)
		instanciarServicos()
	end
	
	def instanciarEstruturaEspecifica()
	end
	
	def instanciarEntrada()
		#raise NotIMplementedError.new("'instanciarEntrada()' nao pode ser execultado" )
	end
	
	def instanciarTransicoes()
		@transicoes = {}
	end
	
	def adicionarTransicao ( transicao )
		@transicoes.update( transicao )
		#raise NotIMplementedError.new("'adicionarTransicao()' nao pode ser execultado" )
	end
	
	def instanciarEstadosFinais ( estadosFinais )
		@estadosFinais = estadosFinais
	end
	
	def instanciarEstadoCorrente( estadoInicial )
		@estadoCorrente = estadoInicial
	end
	
	def instanciarServicos()
		instanciarConsulta()
		instanciarMovimentacao()
	end
	
	def instanciarConsulta()
		@consulta = Consulta.new( self )
	end
	
	def iniciar( cadeia )
		@entrada.iniciar( cadeia )
	end
	
	def execultar()
		return @movimentacao.executar()
	end
	
	def configuracao?()
		return @consulta.configuracao?()
	end
	
	def estaEmEstadoFinal?()
		return @consulta.estaEmEstadoFinal?()
	end
	
	def clonar()
		return Clonagem.new().clonar( self )
	end
end
