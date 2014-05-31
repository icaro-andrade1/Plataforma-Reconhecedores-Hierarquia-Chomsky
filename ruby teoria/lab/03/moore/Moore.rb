$: << "C:/ruby teoria/lab/03/afd"
require 'Transdutor'
require 'AutomatoMoore'

class Moore < Transdutor
	def instanciarAutomato( estadoInicial, estadosFinais )
		@automato = AutomatoMoore.new( estadoInicial, estadosFinais )
		@automato.criarVinculo( self )
	end
	
	def traduzirEstado()
		print( @lambda[ @automato.consulta.estadoCorrente?() ] )
	end
end