$: << "C:/ruby teoria/lab/04/apnd"
require 'ReconhecedorAPND.rb'

#Automato de pilha
rpnd = ReconhecedorAPND.new( "q0", ["q2"] )

rpnd.automato.adicionarTransicao({["q0", "a", "Z0"] => [["q0", ["Z0"]]]})
rpnd.automato.adicionarTransicao({["q0", "a", "B"] => [["q0", ["B"]]]})
rpnd.automato.adicionarTransicao({["q0", "b", "Z0"] => [["q0", ["Z0", "B"]]]})
rpnd.automato.adicionarTransicao({["q0", "b", "B"] => [["q0", ["B", "B"]]]})
rpnd.automato.adicionarTransicao({["q0", "c", "Z0"] => [["q1", ["Z0"]]]})
rpnd.automato.adicionarTransicao({["q0", "c", "B"] => [["q1", ["B"]]]})
rpnd.automato.adicionarTransicao({["q1", "d", "B"] => [["q1", []]]})
rpnd.automato.adicionarTransicao({["q1", "e", "Z0"] => [["q1", ["Z0"]]]})
rpnd.automato.adicionarTransicao({["q1", "e", "B"] => [["q1", ["B"]]]})
rpnd.automato.adicionarTransicao({["q1", "", "Z0"] => [["q2", []]]})

#b) verificando cadeia: abacbceedd
rpnd.iniciar( "abacbceedd" )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()

automatos.each do |automatos|
  puts automatos.configuracao?()
end

#c) linguagem que AP reconhece: b^(n)cd^(n)e(*)
