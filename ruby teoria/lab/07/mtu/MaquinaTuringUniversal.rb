$: << "C:/ruby teoria/lab/07/mtu/servico"
require 'MovimentacaoMTU'
require 'Codificacao'
$: << "C:/ruby teoria/lab/03/afnd"
require 'AutomatoNaoDeterministico'
$: << "C:/ruby teoria/lab/07/mtu"
require 'FitaMTU'
require 'ConsultaMTU'


class MaquinaTuringUniversal < AutomatoNaoDeterministico
	attr_accessor :fitaM
	attr_accessor :fitaQ
	attr_accessor :codificacao
	attr_accessor :estadosFinaisCodificados
	
	def adicionarTransicao( lista )
		qi, sm, qj, sn, e = lista
		transicao = 
			@codificacao.codificarTransicao(
				qi, sm, qj, sn, e, @estadosFinais )
		@fitaM.escrever( transicao )
		@fitaM.avancar()
	end
	
	def instanciarConsulta()
		@consulta = ConsultaMTU.new( self )
	end
	
	def instanciarMovimentacao()
		@movimentacao = MovimentacaoMTU.new( self )
	end
	
	def instanciarEstruturaEspecifica()
		@codificacao = Codificacao.new()
	end
	
	def instanciarEntrada()
		@entrada = FitaMTU.new( padraoSimbolo() )
	end
	
	def instanciarTransicoes()
		@fitaM = FitaMTU.new( padraoTransicao() )
	end
	
	def instanciarEstadoCorrente( estadoInicial )
		@fitaQ = FitaMTU.new( padraoEstado() )
		codQ0 = @codificacao.codificarEstado(
			estadoInicial, @estadosFinais )
		@fitaQ.escrever( codQ0 )
	end
	
	def instanciarEstadosFinais( estadosFinais )
		super( estadosFinais )
		@estadosFinaisCodificados = []
		estadosFinais.each do |estado|
			codigoEstado = @codificacao.codificarEstado(
				estado, estadosFinais )
			@estadosFinaisCodificados << codigoEstado
		end
	end
	
	def iniciar( cadeia )
		registrarW( cadeia )
	end
	
	def registrarW( cadeia )
		cadeiaCodificada = ""
		cadeia.split(//).each do |s|
			cadeiaCodificada +=  @codificacao.codificarSimbolo(s)
		end
		@entrada.escrever( cadeiaCodificada )
		@entrada.reiniciarCursor()
	end
	
	def padraoTransicao()
		return @codificacao.padraoTransicao()
	end
	
	def padraoEstado()
		return @codificacao.padraoEstado()
	end
	
	def padraoSimbolo()
		return @codificacao.padraoSimbolo()
	end
	
end