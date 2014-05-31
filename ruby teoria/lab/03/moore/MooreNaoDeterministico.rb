$: << "C:/ruby teoria/lab/03/afnd"
require 'TransdutorNaoDeterministico'
require 'AutomatoMooreNaoDeterministico'

class MooreNaoDeterministico < TransdutorNaoDeterministico
  def instanciarAutomato( estadoInicial, estadosFinais )
    @automato = AutomatoMooreNaoDeterministico.new( estadoInicial, estadosFinais )
    @automato.criarVinculo( self )
  end
  
  def traduzirEstado()
    print( @lambda[ @automato.consulta.estadoCorrente?() ] )
  end
end