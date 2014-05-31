$: << "C:/ruby teoria/lab/03/moore"
require 'Moore'

moore = Moore.new( "q0", ["q1"] )

moore.automato.adicionarTransicao( {["q0", "a"] => "q1"} )
moore.automato.adicionarTransicao( {["q1", "b"] => "q1"} )
moore.automato.adicionarTransicao( {["q1", "c"] => "q0"} )

moore.instanciarEstruturaEspecifica()

moore.adicionarLambda( {"q0" => "1"} )
moore.adicionarLambda( {"q1" => ""} )

moore.iniciar( "abbcabbbcab" )
moore.traduzir()

puts moore.reconheceu?()