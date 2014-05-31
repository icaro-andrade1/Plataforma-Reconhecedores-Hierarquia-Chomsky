$: << "C:/ruby teoria/lab/04/apnd"
require 'ReconhecedorAPND'

rpnd = ReconhecedorAPND.new( "q0", ["qf"] )

rpnd.automato.adicionarTransicao({["q0", "a", "Z0"] => [["q0", ["Z0","A"]]]})
rpnd.automato.adicionarTransicao({["q0", "a", "A"] => [["q0", ["A","A"]]]})
rpnd.automato.adicionarTransicao({["q0", "b", "A"] => [["q1", []], ["q3",["B"]]]})
rpnd.automato.adicionarTransicao({["q0", "b", "Z0"] => [["q3", ["Z0","B"]]]})

rpnd.automato.adicionarTransicao({["q1", "b", "A"] => [["q1", []]]})
rpnd.automato.adicionarTransicao({["q1", "c", "Z0"] => [["q2", ["Z0"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "Z0"] => [["qf", ["Z0"]]]})

rpnd.automato.adicionarTransicao({["q2", "c", "Z0"] => [["q2", ["Z0"]]]})
rpnd.automato.adicionarTransicao({["q2", "", "Z0"] => [["qf", ["Z0"]]]})

rpnd.automato.adicionarTransicao({["q3", "b", "B"] => [["q3", ["B","B"]]]})
rpnd.automato.adicionarTransicao({["q3", "c", "B"] => [["q4", []]]})

rpnd.automato.adicionarTransicao({["q4", "c", "B"] => [["q4", []]]})
rpnd.automato.adicionarTransicao({["q4", "", "A"] => [["q4", []]]})
rpnd.automato.adicionarTransicao({["q4", "", "Z0"] => [["qf", ["Z0"]]]})


rpnd.iniciar("aaabbcc")
automatos = rpnd.analisar()
puts rpnd.reconheceu?()

cont = 0

automatos.each do |automato|
	cont = cont + 1
    puts automato.configuracao?()
end

puts cont