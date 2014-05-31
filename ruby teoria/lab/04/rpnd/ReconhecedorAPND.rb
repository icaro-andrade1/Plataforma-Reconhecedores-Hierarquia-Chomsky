$: << "C:/ruby teoria/lab/02/af"
require 'Reconhecedor.rb'
$: << "C:/ruby teoria/lab/04/apnd"
require 'AutomatoPilhaNaoDeterministico.rb'

class ReconhecedorAPND < Reconhecedor
  
  def instanciarAutomato( estadoInicial, estadosFinais )
    @automato = AutomatoPilhaNaoDeterministico.new( estadoInicial, estadosFinais )
  end

end
