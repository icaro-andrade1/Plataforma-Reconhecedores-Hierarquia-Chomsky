$: << "C:/ruby teoria/lab/03/afd"

require "ReconhecedorDeterministico.rb"
require "../afnd/ReconhecedorNaoDeterministico.rb"

rfnd = ReconhecedorNaoDeterministico.new( "q0", ["q2"] )

rfnd.automato.adicionarTransicao( {["q0", "a"] => ["q1", "q2", "q4"]} )
rfnd.automato.adicionarTransicao( {["q1", "b"] => ["q2"]} )
rfnd.automato.adicionarTransicao( {["q4", "b"] => ["q3"]} )
rfnd.automato.adicionarTransicao( {["q2", "c"] => ["q2"]} )
rfnd.automato.adicionarTransicao( {["q2", "d"] => ["q3"]} )
rfnd.automato.adicionarTransicao( {["q3", "d"] => ["q1", "q3"]} )

rfnd.iniciar( "acc" )
automatos = rfnd.analisar()
puts rfnd.reconheceu?() # true

automatos.each do |automatos|
  puts automatos.configuracao?()
end

rfd = ReconhecedorDeterministico.new( "q0", ["q2", "q1q3", "q1q2q4", "q2q3"] )

rfd.automato.adicionarTransicao( {["q0", "a"] => "q1q2q4"} )
rfd.automato.adicionarTransicao( {["q1", "b"] => "q2"} )
rfd.automato.adicionarTransicao( {["q2", "c"] => "q2"} )
rfd.automato.adicionarTransicao( {["q2", "d"] => "q3"} )
rfd.automato.adicionarTransicao( {["q3", "d"] => "q1q3"} )
rfd.automato.adicionarTransicao( {["q4", "c"] => "q3"} )
rfd.automato.adicionarTransicao( {["q1q2q4", "b"] => "q2"} )
rfd.automato.adicionarTransicao( {["q1q2q4", "c"] => "q2"} )
rfd.automato.adicionarTransicao( {["q1q2q4", "d"] => "q1q3"} )
rfd.automato.adicionarTransicao( {["q1q3", "b"] => "q2"} )
rfd.automato.adicionarTransicao( {["q1q3", "c"] => "q2q3"} )
rfd.automato.adicionarTransicao( {["q1q3", "d"] => "q1q3"} )
rfd.automato.adicionarTransicao( {["q2q3", "c"] => "q2"} )
rfd.automato.adicionarTransicao( {["q2q3", "d"] => "q1q3"} )


rfd.iniciar( "acc" )
automatos = rfd.analisar()
puts rfd.reconheceu?() # true

automatos.each do |automatos|
  puts automatos.configuracao?()
end

