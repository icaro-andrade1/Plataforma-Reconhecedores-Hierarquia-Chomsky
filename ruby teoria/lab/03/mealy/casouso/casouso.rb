$: << "C:/ruby teoria/lab/03/mealy"
require "Mealy"

mealy = Mealy.new("q0", ["q1"])

mealy.automato.adicionarTransicao( {["q0", "a"] => "q1"} )
mealy.automato.adicionarTransicao( {["q1", "b"] => "q1"} )
mealy.automato.adicionarTransicao( {["q1", "c"] => "q0"} )

mealy.instanciarEstruturaEspecifica()

mealy.adicionarLambda( {["q0", "a"] => "ab"} )
mealy.adicionarLambda( {["q1", "b"] => ""} )
mealy.adicionarLambda( {["q1", "c"] => "c"} )

#mealy.iniciar("abbcabbbcab")
mealy.iniciar("a")
mealy.traduzir()

puts mealy.reconheceu?()
