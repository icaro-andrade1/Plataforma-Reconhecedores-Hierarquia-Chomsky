$: << "C:/ruby teoria/lab/04/apd"
require 'ReconhecedorAPD'

rpd = ReconhecedorAPD.new( "q0", ["q1"] )
rpd.automato.adicionarTransicao( { [ "q0", "x", "Z0" ] => [ "q0", [ "WW"] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "x", "W" ] => [ "q0", [ "WW"] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "y", "W" ] => [ "q1", [ "W" ] ] } )
rpd.automato.adicionarTransicao( { [ "q1", "y", "W" ] => [ "q1", [] ] } )




rpd.iniciar( "xxyyy" )
automatos = rpd.analisar()
puts rpd.reconheceu?()
automatos.each do |automato|
  puts automato.configuracao?()
end