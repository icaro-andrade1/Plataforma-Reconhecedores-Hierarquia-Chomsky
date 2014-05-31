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

rfnd.iniciar( "" )
automatos = rfnd.analisar()
puts rfnd.reconheceu?() # true

automatos.each do |automatos|
  puts automatos.configuracao?()
end

rfd = ReconhecedorDeterministico.new( "q0", ["q1", "q2"] )

rfd.automato.adicionarTransicao( {["q0", "a"] => "q0"} )

rfd.iniciar( "" )
automatos = rfd.analisar()
puts rfd.reconheceu?() # true

automatos.each do |automatos|
  puts automatos.configuracao?()
end
