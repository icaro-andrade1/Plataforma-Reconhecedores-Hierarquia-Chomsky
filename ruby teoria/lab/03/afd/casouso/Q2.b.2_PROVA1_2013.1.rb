$: << "C:/ruby teoria/lab/03/afd"
require 'ReconhecedorDeterministico'

rdf = ReconhecedorDeterministico.new("q0", ["q1", "q2"])

rdf.automato.adicionarTransicao( {["q0", "a"] => "q3"} )
rdf.automato.adicionarTransicao( {["q0", "b"] => "q2"} )
rdf.automato.adicionarTransicao( {["q0", "c"] => "q1"} )
rdf.automato.adicionarTransicao( {["q1", "c"] => "q2"} )
rdf.automato.adicionarTransicao( {["q2", "c"] => "q1"} )
rdf.automato.adicionarTransicao( {["q3", "c"] => "q4"} )
rdf.automato.adicionarTransicao( {["q4", "c"] => "q4"} )


rdf.iniciar( "bcc" )

	automatos = rdf.analisar()
	puts rdf.reconheceu?() 


	automatos.each do |automato|
		puts automato.configuracao?()
	end