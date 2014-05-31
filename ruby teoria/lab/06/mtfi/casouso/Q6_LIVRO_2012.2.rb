$: << "C:/ruby teoria/lab/06/mtfi"
require 'ReconhecedorMTFI'

mtfi = ReconhecedorMTFI.new( "q0", ["q6"])

mtfi.automato.adicionarTransicao({["q0", "a"] => [["q1", "X", "D"]]})
mtfi.automato.adicionarTransicao({["q0", "B"] => [["q6" ,"B", "D"]]})
mtfi.automato.adicionarTransicao({["q1", "B"] => [["q3" ,"B", "E"]]})
mtfi.automato.adicionarTransicao({["q2", "B"] => [["q4" ,"B", "E"]]})
mtfi.automato.adicionarTransicao({["q3", "X"] => [["q7" ,"B", "D"]]})
mtfi.automato.adicionarTransicao({["q4", "X"] => [["q7" ,"X", "D"]]})
mtfi.automato.adicionarTransicao({["q5", "X"] => [["q0", "X", "D"]]})
mtfi.automato.adicionarTransicao({["q0", "b"] => [["q2" ,"X", "D"]]})
mtfi.automato.adicionarTransicao({["q1", "a"] => [["q1" ,"a", "D"]]})
mtfi.automato.adicionarTransicao({["q2", "a"] => [["q2", "a", "D"]]})
mtfi.automato.adicionarTransicao({["q3", "a"] => [["q5", "B", "E"]]})
mtfi.automato.adicionarTransicao({["q4", "a"] => [["q7", "b", "D"]]})
mtfi.automato.adicionarTransicao({["q5", "a"] => [["q5", "a", "E"]]})
mtfi.automato.adicionarTransicao({["q0", "X"] => [["q0", "X", "D"]]})
mtfi.automato.adicionarTransicao({["q1", "b"] => [["q1" ,"b", "D"]]})
mtfi.automato.adicionarTransicao({["q2", "b"] => [["q2", "b", "D"]]})
mtfi.automato.adicionarTransicao({["q3", "b"] => [["q7" ,"b", "D"]]})
mtfi.automato.adicionarTransicao({["q4", "b"] => [["q5", "B", "E"]]})
mtfi.automato.adicionarTransicao({["q5", "b"] => [["q5", "b", "E"]]})

puts "Cadeia abba"
mtfi.iniciar( "abba" )
automatos = mtfi.analisar()
puts mtfi.reconheceu?()

automatos.each do |automato|
	puts automato.configuracao?()
end
puts "Fim"

puts "Cadeia baa"

mtfi.iniciar( "baa" )
automatos = mtfi.analisar()
puts mtfi.reconheceu?()

automatos.each do |automato|
	puts automato.configuracao?()
end
puts "Fim"
