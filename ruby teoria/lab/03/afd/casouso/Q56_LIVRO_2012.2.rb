$: << "C:/ruby teoria/lab/03/afd"
require 'ReconhecedorDeterministico'

rdf = ReconhecedorDeterministico.new("q0", ["q2"])

rdf.automato.adicionarTransicao( {["q1", "0"] => "q1"} )
rdf.automato.adicionarTransicao( {["q1", "2"] => "q1"} )
rdf.automato.adicionarTransicao( {["q0", "0"] => "q0"} )
rdf.automato.adicionarTransicao( {["q0", "1"] => "q1"} )
rdf.automato.adicionarTransicao( {["q1", "1"] => "q1"} )
rdf.automato.adicionarTransicao( {["q1", "2"] => "q2"} )
rdf.automato.adicionarTransicao( {["q1", "3"] => "q2"} )
rdf.automato.adicionarTransicao( {["q2", "0"] => "q0"} )
rdf.automato.adicionarTransicao( {["q2", "1"] => "q1"} )


rdf.iniciar( "01200113" )

automatos = rdf.analisar()
puts rdf.reconheceu?() 

automatos.each do |automato|
	puts automato.configuracao?()
end