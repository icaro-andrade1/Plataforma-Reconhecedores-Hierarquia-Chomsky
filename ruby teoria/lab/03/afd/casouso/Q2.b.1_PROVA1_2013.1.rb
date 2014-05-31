$: << "C:/ruby teoria/lab/03/afd"
require 'ReconhecedorDeterministico'

#automato sem estados inacessiveis equivalente ao automato
#2b.1

rdf = ReconhecedorDeterministico.new("q0", ["q5"])

rdf.automato.adicionarTransicao( {["q0", "a"] => "q0"} )
rdf.automato.adicionarTransicao( {["q0", "b"] => "q4"} )
rdf.automato.adicionarTransicao( {["q0", "c"] => "q3"} )
rdf.automato.adicionarTransicao( {["q3", "e"] => "q4"} )
rdf.automato.adicionarTransicao( {["q4", "d"] => "q3"} )
rdf.automato.adicionarTransicao( {["q4", "f"] => "q5"} )
rdf.automato.adicionarTransicao( {["q5", "c"] => "q0"} )
rdf.automato.adicionarTransicao( {["q5", "g"] => "q5"})


rdf.iniciar( "aacefg" )

automatos = rdf.analisar()
puts rdf.reconheceu?()

automatos.each do |automato|
  puts automato.configuracao?()

end