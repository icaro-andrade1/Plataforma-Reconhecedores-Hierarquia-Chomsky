$: << "C:/ruby teoria/lab/04/apnd"
require 'ReconhecedorAPND.rb'


rpnd = ReconhecedorAPND.new( "qi", ["qf"] )

rpnd.automato.adicionarTransicao({["qi", "", "Z1"] => [["q0", ["Z1", "Z0"]]]})
rpnd.automato.adicionarTransicao({["q0", "x", "Z0"] => [["q0", ["W", "W"]]]})
rpnd.automato.adicionarTransicao({["q0", "x", "W"] => [["q0", ["W", "W"]]]})
rpnd.automato.adicionarTransicao({["q0", "y", "W"] => [["q1", ["W"]]]})
rpnd.automato.adicionarTransicao({["q1", "y", "W"] => [["q1", []]]})
rpnd.automato.adicionarTransicao({["q1", "", "Z1"] => [["qf", []]]})


rpnd.iniciar( "xyyy" )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()



