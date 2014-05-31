$: << "C:/ruby teoria/lab/04/apnd"
require 'ReconhecedorAPND'

rpnd = ReconhecedorAPND.new( "q0", ["q1","q2"] )

rpnd.automato.adicionarTransicao({["q0", "", ""] => [["q2", ["T"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "T"] => [["q2", ["cTD"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "T"] => [["q2", ["aR"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "T"] => [["q2", ["cD"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "R"] => [["q2", ["aR"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "R"] => [["q2", ["cRD"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "R"] => [["q2", ["cD"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "R"] => [["q2", ["cBD"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "B"] => [["q2", ["cBD"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "B"] => [["q2", ["b"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "B"] => [["q2", ["bB"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "D"] => [["q2", ["d"]]]})
rpnd.automato.adicionarTransicao({["q2", "a", "a"] => [["q2", [""]]]})
rpnd.automato.adicionarTransicao({["q2", "b", "b"] => [["q2", [""]]]})
rpnd.automato.adicionarTransicao({["q2", "c", "c"] => [["q2", [""]]]})
rpnd.automato.adicionarTransicao({["q2", "d", "d"] => [["q2", [""]]]})

rpnd.automato.adicionarTransicao({["q0", "", ""] => [["q1", ["S"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "S"] => [["q1", ["aSC"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "S"] => [["q1", ["aC"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "S"] => [["q1", ["aBC"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "B"] => [["q1", ["aBC"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "B"] => [["q1", ["b"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "B"] => [["q1", ["bB"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "C"] => [["q1", ["c"]]]})
rpnd.automato.adicionarTransicao({["q2", "a", "a"] => [["q2", [""]]]})
rpnd.automato.adicionarTransicao({["q2", "b", "b"] => [["q2", [""]]]})
rpnd.automato.adicionarTransicao({["q2", "c", "c"] => [["q2", [""]]]})



rpnd.iniciar("cd")
automatos = rpnd.analisar()
puts rpnd.reconheceu?()