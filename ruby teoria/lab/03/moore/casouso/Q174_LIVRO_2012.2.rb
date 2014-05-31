$: << "C:/ruby teoria/lab/03/moore"
require 'MooreNaoDeterministico'

moore = MooreNaoDeterministico.new( "desligar", ["desligar"] )

moore.automato.adicionarTransicao( {["desligar", "v"] => ["ligar"]} )
moore.automato.adicionarTransicao( {["desligar", "c"] => ["desligar"]} )
moore.automato.adicionarTransicao( {["ligar", "c"] => ["desligar"]} )
moore.automato.adicionarTransicao( {["ligar", "v"] => ["ligar"]} )

puts "Cadeia >> vcccvc"
moore.iniciar( "vcccvc" )
moore.traduzir()

puts moore.reconheceu?()

automatos = moore.analisar()

automatos.each do |automato|
  puts automato.configuracao?()
end

puts "Cadeia >> vccvv"
moore.iniciar( "vccvv" )
moore.traduzir()

puts moore.reconheceu?()

automatos = moore.analisar()

automatos.each do |automato|
  puts automato.configuracao?()
end
