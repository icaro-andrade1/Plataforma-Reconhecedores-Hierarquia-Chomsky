$: << "C:/ruby teoria/lab/04/apd"
require 'ReconhecedorAPD'

aPD = ReconhecedorAPD.new( "q0", ["q3"] )
aPD.automato.adicionarTransicao( { [ "q0", "a", "Z0" ] => [ "q1", [ "a" ] ] } )
aPD.automato.adicionarTransicao( { [ "q1", "l", "a" ] => [ "q2", [ "B" ] ] } )
aPD.automato.adicionarTransicao( { [ "q2", "l", "B" ] => [ "q2", [ "B" ] ] } )
aPD.automato.adicionarTransicao( { [ "q2", "f", "B" ] => [ "q3", [ "Z0" ] ] } )

aPD.iniciar( "alllf" )
automatos = aPD.analisar()
puts aPD.reconheceu?()

automatos.each do |automato|
    puts automato.configuracao?()
end

