$: << "C:/ruby teoria/lab/04/apd"
require 'ReconhecedorAPD'

rpd = ReconhecedorAPD.new( "q0", ["q1"] )
rpd.automato.adicionarTransicao( { [ "q0", "a", "Z0" ] => [ "q0", [ "A" ] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "a", "A" ] => [ "q0", [ "A", "A", "A" ] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "b", "A" ] => [ "q1", [] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "b", "Z0" ] => [ "q1", [] ] } )
rpd.automato.adicionarTransicao( { [ "q1", "b", "A" ] => [ "q1", [] ] } )

rpd.iniciar( "aa" )
automatos = rpd.analisar()
puts rpd.reconheceu?()

rpd.iniciar( "aabb" )
automatos = rpd.analisar()
puts rpd.reconheceu?()

rpd.iniciar( "aabbbbbbbbb" )
automatos = rpd.analisar()
puts rpd.reconheceu?()

rpd.iniciar( "aaaaaaaabb" )
automatos = rpd.analisar()
puts rpd.reconheceu?()

rpd.iniciar( "abbb" )
automatos = rpd.analisar()
puts rpd.reconheceu?()