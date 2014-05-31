$: << "C:/ruby teoria/lab/03/afd"
require 'ReconhecedorDeterministico'

#automato sem estados inacessiveis equivalente ao automato
#2b.1 desenhada na prova

#q6 = {q2,q3} / q7 = {q2,q4} / q8 = {q3,q6}

rdf = ReconhecedorDeterministico.new("q0", ["q3"])

rdf.automato.adicionarTransicao( {["q0", "c"] => "q1"} )
rdf.automato.adicionarTransicao( {["q1", "b"] => "q2"} )
rdf.automato.adicionarTransicao( {["q2", "a"] => "q6"} )
rdf.automato.adicionarTransicao( {["q3", "b"] => "q3"} )
rdf.automato.adicionarTransicao( {["q4", "a"] => "q3"} )
rdf.automato.adicionarTransicao( {["q5", "b"] => "q7"} )
rdf.automato.adicionarTransicao( {["q6", "a"] => "q6"} )
rdf.automato.adicionarTransicao( {["q6", "b"] => "q3"} )
rdf.automato.adicionarTransicao( {["q7", "a"] => "q8"} )
rdf.automato.adicionarTransicao( {["q8", "a"] => "q6"} )
rdf.automato.adicionarTransicao( {["q8", "b"] => "q3"} )


rdf.iniciar( "cbab" )

automatos = rdf.analisar()
puts rdf.reconheceu?()

automatos.each do |automato|
  puts automato.configuracao?()

end