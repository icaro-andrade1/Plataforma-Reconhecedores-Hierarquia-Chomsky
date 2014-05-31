$: << "C:/ruby teoria/lab/03/afd"
require 'ReconhecedorDeterministico'

rdf = ReconhecedorDeterministico.new("q0", ["q5"])

rdf.automato.adicionarTransicao( {["q0", "0"] => "q1"} )
rdf.automato.adicionarTransicao( {["q1", "1"] => "q5"} )
rdf.automato.adicionarTransicao( {["q2", "0"] => "q1"} )
rdf.automato.adicionarTransicao( {["q2", "0"] => "q4"} )
rdf.automato.adicionarTransicao( {["q3", "2"] => "q2"} )
rdf.automato.adicionarTransicao( {["q4", "1"] => "q3"} )

rdf.iniciar( "01" )

	automatos = rdf.analisar()
	puts rdf.reconheceu?() 


	automatos.each do |automato|
		puts automato.configuracao?()
	end