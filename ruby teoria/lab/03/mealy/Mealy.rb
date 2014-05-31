$: << "C:/ruby teoria/lab/03/moore"
require 'Transdutor'
$: << "C:/ruby teoria/lab/03/mealy"
require 'AutomatoMealy'

class Mealy < Transdutor
  def instaciarAutomato(estadoInicial, estadosFinais)
    @automato = AutomatoMealy.new(estadoInicial, estadosFinais)
    @automato.criarVinculo(self)
  end
  
  def traduzirTransicao()
    print @lambda[[@automato.consulta.estadoCorrente?(), @automato.entrada.ler()]]
  end
end

