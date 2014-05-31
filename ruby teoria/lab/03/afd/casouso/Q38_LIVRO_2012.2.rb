$: << "C:/ruby teoria/lab/03/afd"
require 'ReconhecedorDeterministico'

rdf = ReconhecedorDeterministico.new("q0", ["q3"])

rdf.automato.adicionarTransicao( {["q0", "a"] => "q1q2"} )
rdf.automato.adicionarTransicao( {["q1", "b"] => "q1q3"} )
rdf.automato.adicionarTransicao( {["q2", "b"] => "q1"} )
rdf.automato.adicionarTransicao( {["q2", "c"] => "q3"} )
rdf.automato.adicionarTransicao( {["q3", "d"] => "q3"} )
rdf.automato.adicionarTransicao( {["q1q2", "b"] => "q1q3"} )
rdf.automato.adicionarTransicao( {["q1q2", "c"] => "q3"} )
rdf.automato.adicionarTransicao( {["q1q3", "b"] => "q1q3"} )
rdf.automato.adicionarTransicao( {["q1q3", "d"] => "q3"} )


rdf.iniciar( "abbddd" )

automatos = rdf.analisar()
puts rdf.reconheceu?()

automatos.each do |automato|
  puts automato.configuracao?()

end