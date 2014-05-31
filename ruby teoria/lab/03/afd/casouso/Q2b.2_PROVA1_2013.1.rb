$: << "C:/ruby teoria/lab/03/afd"
require 'ReconhecedorDeterministico'

#automato sem estados inuteis equivalente ao automato
#2b.2

rdf = ReconhecedorDeterministico.new("q0", ["q4"])

rdf.automato.adicionarTransicao( {["q0", "a"] => "q3"} )
rdf.automato.adicionarTransicao( {["q3", "c"] => "q4"} )
rdf.automato.adicionarTransicao( {["q4", "c"] => "q4"} )


rdf.iniciar( "accc" )

automatos = rdf.analisar()
puts rdf.reconheceu?()

automatos.each do |automato|
  puts automato.configuracao?()

end