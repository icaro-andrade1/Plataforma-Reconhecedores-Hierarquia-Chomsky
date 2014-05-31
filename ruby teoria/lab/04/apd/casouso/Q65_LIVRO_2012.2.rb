$: << "C:/ruby teoria/lab/04/apd"
require 'ReconhecedorAPD'

rpd = ReconhecedorAPD.new( "q0", ["qf"] )
rpd.automato.adicionarTransicao( { [ "q0", "a", "Z0" ] => [ "q0", [ "Z0", "A" ] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "a", "A" ] => [ "q0", [ "A", "A"] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "b", "A" ] => [ "q1", [ "A" ] ] } )
rpd.automato.adicionarTransicao( { [ "q1", "c", "A" ] => [ "q1", [] ] } )
rpd.automato.adicionarTransicao( { [ "q1", "", "Z0" ] => [ "qf", ["Z0"] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "", "Z0" ] => [ "qf", ["Z0"] ] } )


rpd.iniciar( "aabcc" )
automatos = rpd.analisar()
puts rpd.reconheceu?()
	
rpd.iniciar( "aaabcc" )
automatos = rpd.analisar()
puts rpd.reconheceu?()

rpd.iniciar( "" )
automatos = rpd.analisar()
puts rpd.reconheceu?()