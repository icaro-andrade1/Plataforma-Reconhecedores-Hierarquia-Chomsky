$: << "C:/ruby teoria/lab/04/ape"
require 'ReconhecedorAPE'

rape = ReconhecedorAPE.new( "q11", ["q12"] )

rape.automato.adicionarTransicao(	{ [ "I", "q11", "a"] => ["q11"] } )
		
rape.automato.adicionarTransicao(	{ [ "I", "q11", "x"] => ["q12"] } )
	
rape.automato.adicionarTransicao(	{ [ "I", "q12", "b"] => ["q12"] } )
	
rape.iniciar( "axb" )
automatos = rape.analisar()
puts rape.reconheceu?()


automatos.each do |automato|
    puts automato.configuracao?()
end