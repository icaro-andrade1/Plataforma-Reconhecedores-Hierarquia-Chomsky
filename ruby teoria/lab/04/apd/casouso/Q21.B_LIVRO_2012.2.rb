$: << "C:/ruby teoria/lab/04/apd"
require 'ReconhecedorAPD'

rpd = ReconhecedorAPD.new( "q0", ["q2"] )
rpd.automato.adicionarTransicao( { [ "q0", "a", "Z0" ] => [ "q0", [ "Z0" ] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "a", "B" ] => [ "q0", [ "B" ] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "b", "Z0" ] => [ "q0", [ "Z0", "B" ] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "b", "B" ] => [ "q0", [ "B","B" ] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "c", "Z0" ] => [ "q1", [ "Z0" ] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "c", "B" ] => [ "q1", [ "B"] ] } )
rpd.automato.adicionarTransicao( { [ "q1", "d", "B" ] => [ "q1", [ ] ] } )
rpd.automato.adicionarTransicao( { [ "q1", "e", "Z0" ] => [ "q1", [ "Z0"] ] } )
rpd.automato.adicionarTransicao( { [ "q1", "e", "B" ] => [ "q1", [ "B"] ] } )
rpd.automato.adicionarTransicao( { [ "q1", ">", "Z0" ] => [ "q2", [ ] ] } )



rpd.iniciar( "abaabceedd" )
automatos = rpd.analisar()
puts rpd.reconheceu?()

automatos.each do |automato|
    puts automato.configuracao?()
end

