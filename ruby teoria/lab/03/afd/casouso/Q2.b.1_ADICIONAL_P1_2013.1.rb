$: << "C:/ruby teoria/lab/03/afd"
require 'ReconhecedorDeterministico'

#automato sem estados inacessiveis equivalente ao automato
#2b.1 desenhada na prova

#q6 = {q1,q3} / q7 = {q2,q4} / q8 = {q4,q5}

rdf = ReconhecedorDeterministico.new("q0", ["q5"])

rdf.automato.adicionarTransicao( {["q0", "a"] => "q6"} )
rdf.automato.adicionarTransicao( {["q4", "b"] => "q5"} )
rdf.automato.adicionarTransicao( {["q4", "c"] => "q4"} )
rdf.automato.adicionarTransicao( {["q5", "a"] => "q4"} )
rdf.automato.adicionarTransicao( {["q6", "a"] => "q4"} )
rdf.automato.adicionarTransicao( {["q6", "b"] => "q7"} )
rdf.automato.adicionarTransicao( {["q7", "b"] => "q5"} )
rdf.automato.adicionarTransicao( {["q7", "c"] => "q8"} )
rdf.automato.adicionarTransicao( {["q8", "a"] => "q4"} )
rdf.automato.adicionarTransicao( {["q8", "b"] => "q5"} )
rdf.automato.adicionarTransicao( {["q8", "c"] => "q4"} )


rdf.iniciar( "abcab" )

automatos = rdf.analisar()
puts rdf.reconheceu?()

automatos.each do |automato|
  puts automato.configuracao?()

end