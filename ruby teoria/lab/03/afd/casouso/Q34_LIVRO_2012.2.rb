$: << "C:/ruby teoria/lab/03/afd"
require 'ReconhecedorDeterministico'

rdf = ReconhecedorDeterministico.new("q0", ["q1"])

rdf.automato.adicionarTransicao( {["q0", "a"] => "q1"} )
rdf.automato.adicionarTransicao( {["q1", "b"] => "q1"} )
rdf.automato.adicionarTransicao( {["q1", "c"] => "q0"} )

rdf.iniciar( "abbbbbbb" )

automatos = rdf.analisar()
puts rdf.reconheceu?() 

automatos.each do |automato|
  puts automato.configuracao?()
end