$: << "C:/ruby teoria/lab/03/afnd"

require "ReconhecedorNaoDeterministico.rb"

ex1 = ReconhecedorNaoDeterministico.new( "q0", ["q3", "q5"])

ex1.automato.adicionarTransicao({["q0", "a"] => ["q1"]})
ex1.automato.adicionarTransicao({["q5", "a"] => ["q1", "q2"]})
ex1.automato.adicionarTransicao({["q1", "b"] => ["q1", "q2"]})
ex1.automato.adicionarTransicao({["q2", "b"] => ["q2"]})
ex1.automato.adicionarTransicao({["q4", "b"] => ["q5"]})
ex1.automato.adicionarTransicao({["q1", "c"] => ["q3"]})
ex1.automato.adicionarTransicao({["q2", "c"] => ["q3"]})
ex1.automato.adicionarTransicao({["q3", "c"] => ["q3"]})

puts ""
puts"O automato reconhece cadeias da linguagem: ab*cc*"
puts ""
puts "Exemplos de Cadeias - Automato Original"

print "ab > "
ex1.iniciar( "ab" )
automatos = ex1.analisar()
puts ex1.reconheceu?() 

print "abbccc > "
ex1.iniciar( "abbccc" )
automatos = ex1.analisar()
puts ex1.reconheceu?() 



ex2 = ReconhecedorNaoDeterministico.new( "q0", ["q3"])

ex2.automato.adicionarTransicao({["q0", "a"] => ["q1"]})
ex2.automato.adicionarTransicao({["q1", "b"] => ["q1"]})
ex2.automato.adicionarTransicao({["q1", "c"] => ["q3"]})
ex2.automato.adicionarTransicao({["q3", "c"] => ["q3"]})

puts ""
puts "Exemplos de Cadeias - Automato Equivalente, isento de transicoes vazias e estados inuteis."

print "ab > "
ex2.iniciar( "ab" )
automatos = ex2.analisar()
puts ex2.reconheceu?() # true

print "abbccc > "
ex2.iniciar( "abbccc" )
automatos = ex2.analisar()
puts ex2.reconheceu?() # true

puts ""
puts "Ambos automatos reconhecem a linguagem ab*cc*, logo eles sao equivalentes."
puts ""


