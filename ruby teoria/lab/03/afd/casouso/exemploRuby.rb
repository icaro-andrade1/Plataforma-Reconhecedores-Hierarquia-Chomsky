$: << "C:/ruby teoria/lab/03/afd"
require 'ReconhecedorDeterministico'

#Instânciando o automato Finito Deterministico 
#(estado inicial, lista de estados finais ex: ["qx","qy"])
rdf = ReconhecedorDeterministico.new("q0", ["q1"])

#Adicionando as transições do automato finito determinístico
rdf.automato.adicionarTransicao( {["q0", "0"] => "q1"} )
rdf.automato.adicionarTransicao( {["q1", "0"] => "q1"} )
rdf.automato.adicionarTransicao( {["q1", "1"] => "q1"} )

#Cadeia a ser analisada
rdf.iniciar( "00001" )

#Mandando analisar a cadeia
automatos = rdf.analisar()

#Perguntando se a cadeia analisada foi reconhecida
puts rdf.reconheceu?() 
	
#Mostrando passo a passo na tela	
automatos.each do |automato|
	puts automato.configuracao?()
end

#---------------------------------------------------------------------------#
#							Outra Cadeia									#
#---------------------------------------------------------------------------#

#Cadeia a ser analisada
rdf.iniciar( "10" )

#Mandando analisar a cadeia
automatos = rdf.analisar()

#Perguntando se a cadeia analisada foi reconhecida
puts rdf.reconheceu?() 
	
#Mostrando passo a passo na tela	
automatos.each do |automato|
	puts automato.configuracao?()
end