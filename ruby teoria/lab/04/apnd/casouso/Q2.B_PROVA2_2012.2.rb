$: << "C:/ruby teoria/lab/04/apnd"
require 'ReconhecedorAPND.rb'

rpnd = ReconhecedorAPND.new( "q0", ["q4"] )


rpnd.automato.adicionarTransicao({["q0", "a", "Z0"] => [["q1", ["Z0","a"]]]})
rpnd.automato.adicionarTransicao({["q1", "a", ""] => [["q1", ["a"]]]})
rpnd.automato.adicionarTransicao({["q1", "", ""] => [["q2", []]]})
rpnd.automato.adicionarTransicao({["q2", "b", ""] => [["q2", []]]})
rpnd.automato.adicionarTransicao({["q2", "c", "a"] => [["q3", []]]})
rpnd.automato.adicionarTransicao({["q3", "c", "a"] => [["q3", []]]})
rpnd.automato.adicionarTransicao({["q3", "", "Z0"] => [["q4", []]]})


rpnd.iniciar( "aaaccc" )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()

rpnd.iniciar( "abbbbbc" )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()

rpnd.iniciar( "bbbb" )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()

rpnd.iniciar( "abccc" )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()



