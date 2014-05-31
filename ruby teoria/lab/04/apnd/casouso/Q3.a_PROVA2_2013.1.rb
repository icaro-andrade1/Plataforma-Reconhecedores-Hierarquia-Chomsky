$: << "C:/ruby teoria/lab/04/apnd"
require 'ReconhecedorAPND'

rpnd = ReconhecedorAPND.new( "q0", ["q1","q2"] )

rpnd.automato.adicionarTransicao({["q0", "", ""] => [["q1", ["S"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "S"] => [["q1", ["aABC"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "A"] => [["q1", ["aAB"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "A"] => [["q1", ["a"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "C"] => [["q1", ["cC"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "C"] => [["q1", ["c"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "B"] => [["q1", ["bB"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "B"] => [["q1", ["b"]]]})
rpnd.automato.adicionarTransicao({["q1", "a", "a"] => [["q1", ["a"]]]})
rpnd.automato.adicionarTransicao({["q1", "b", "b"] => [["q1", ["b"]]]})
rpnd.automato.adicionarTransicao({["q1", "c", "c"] => [["q1", ["c"]]]})

rpnd.automato.adicionarTransicao({["q0", "", ""] => [["q2", ["Z"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "Z"] => [["q2", ["aABC"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "A"] => [["q2", ["aA"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "A"] => [["q2", ["a"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "B"] => [["q2", ["bBC"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "C"] => [["q2", ["c"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "B"] => [["q2", ["b"]]]})

rpnd.iniciar("abbcc")
automatos = rpnd.analisar()
puts rpnd.reconheceu?()