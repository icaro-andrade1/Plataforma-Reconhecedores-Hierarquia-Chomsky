$: << "C:/ruby teoria/lab/03/afd"

require "ReconhecedorDeterministico.rb"
require "../afnd/ReconhecedorNaoDeterministico.rb"

rfnd = ReconhecedorNaoDeterministico.new( "q0", ["q2"] )

rfnd.automato.adicionarTransicao( {["q0", "a"] => "q0"} )
rfnd.automato.adicionarTransicao( {["q0", "b"] => "q0"} )
rfnd.automato.adicionarTransicao( {["q0", "c"] => "q0"} )
rfnd.automato.adicionarTransicao( {["q0", "b"] => "q1"} )
rfnd.automato.adicionarTransicao( {["q0", "c"] => "q1"} )
rfnd.automato.adicionarTransicao( {["q1", "b"] => "q1"} )
rfnd.automato.adicionarTransicao( {["q1", "c"] => "q1"} )
rfnd.automato.adicionarTransicao( {["q1", "c"] => "q2"} )
rfnd.automato.adicionarTransicao( {["q2", "c"] => "q2"} )

rfnd.iniciar( "aabbcc" )
automatos = rfnd.analisar()
puts rfnd.reconheceu?() # true

automatos.each do |automatos|
  puts automatos.configuracao?()
end

rfd = ReconhecedorDeterministico.new( "q0", ["q2", "q0q1", "q1q2", "q0q1q2"] )

rfd.automato.adicionarTransicao( {["q0", "a"] => "q0"} )
rfd.automato.adicionarTransicao( {["q0", "b"] => "q0q1"} )
rfd.automato.adicionarTransicao( {["q0", "c"] => "q0q2"} )
rfd.automato.adicionarTransicao( {["q1", "b"] => "q1"} )
rfd.automato.adicionarTransicao( {["q1", "c"] => "q1q2"} )
rfd.automato.adicionarTransicao( {["q2", "c"] => "q2"} )
rfd.automato.adicionarTransicao( {["q0q1", "a"] => "q0"} )
rfd.automato.adicionarTransicao( {["q0q1", "b"] => "q0q1"} )
rfd.automato.adicionarTransicao( {["q0q1", "c"] => "q0q1q2"} )
rfd.automato.adicionarTransicao( {["q1q2", "b"] => "q1"} )
rfd.automato.adicionarTransicao( {["q1q2", "c"] => "q1q2"} )
rfd.automato.adicionarTransicao( {["q0q1q2", "a"] => "q0"} )
rfd.automato.adicionarTransicao( {["q0q1q2", "b"] => "q0q1"} )
rfd.automato.adicionarTransicao( {["q0q1q2", "c"] => "q0q1q2"} )

rfd.iniciar( "aabbcc" )
automatos = rfd.analisar()
puts rfd.reconheceu?() # true

automatos.each do |automatos|
  puts automatos.configuracao?()
end

