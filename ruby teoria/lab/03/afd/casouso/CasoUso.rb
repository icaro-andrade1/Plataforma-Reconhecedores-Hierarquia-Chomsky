$: << "C:/ruby teoria/lab/03/afd"
require 'ReconhecedorDeterministico'

rdf = ReconhecedorDeterministico.new("q0", ["q1", "q2"])

rdf.automato.adicionarTransicao( {["q0", "0"] => "q0"} )
rdf.automato.adicionarTransicao( {["q0", "1"] => "q1"} )
rdf.automato.adicionarTransicao( {["q0", "2"] => "q3"} )
rdf.automato.adicionarTransicao( {["q1", "0"] => "q3"} )
rdf.automato.adicionarTransicao( {["q1", "1"] => "q1"} )
rdf.automato.adicionarTransicao( {["q1", "2"] => "q2"} )
rdf.automato.adicionarTransicao( {["q2", "0"] => "q3"} )
rdf.automato.adicionarTransicao( {["q2", "1"] => "q3"} )
rdf.automato.adicionarTransicao( {["q2", "2"] => "q2"} )
rdf.automato.adicionarTransicao( {["q3", "0"] => "q3"} )
rdf.automato.adicionarTransicao( {["q3", "1"] => "q3"} )
rdf.automato.adicionarTransicao( {["q3", "2"] => "q3"} )

rdf.iniciar( "00001" )

	automatos = rdf.analisar()
	puts rdf.reconheceu?() 
	
	#ou
	automatos.each do |automato|
		puts automato.configuracao?()
	end