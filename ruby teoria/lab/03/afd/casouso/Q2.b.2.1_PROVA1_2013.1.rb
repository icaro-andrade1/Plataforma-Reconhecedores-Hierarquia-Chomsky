$: << "C:/ruby teoria/lab/03/afd"
require 'ReconhecedorDeterministico'

rdf = ReconhecedorDeterministico.new("q0", ["q1"])

rdf.automato.adicionarTransicao( {["q0", "a"] => "q1"} )
rdf.automato.adicionarTransicao( {["q1", "b"] => "q2"} )
rdf.automato.adicionarTransicao( {["q1", "c"] => "q3"} )
rdf.automato.adicionarTransicao( {["q2", "a"] => "q3"} )
rdf.automato.adicionarTransicao( {["q2", "c"] => "q0"} )

rdf.iniciar( "abcabca" )

	automatos = rdf.analisar()
	puts rdf.reconheceu?() 


	automatos.each do |automato|
		puts automato.configuracao?()
	end