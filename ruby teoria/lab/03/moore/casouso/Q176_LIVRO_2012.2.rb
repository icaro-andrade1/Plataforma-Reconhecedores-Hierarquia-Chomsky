$: << "C:/ruby teoria/lab/03/moore"
require 'Moore'

moore = Moore.new( "desligar", ["desligar"] )

moore.automato.adicionarTransicao( {["desligar", "v"] => "ligar"} )
moore.automato.adicionarTransicao( {["desligar", "c"] => "desligar"} )
moore.automato.adicionarTransicao( {["ligar", "c"] => "desligar"} )
moore.automato.adicionarTransicao( {["ligar", "v"] => "ligar"} )

puts "Cadeia >> vcvvvccvc"
moore.iniciar( "vcvvvccvc" )
moore.traduzir()

puts moore.reconheceu?()

automatos = moore.analisar()

automatos.each do |automato|
  puts automato.configuracao?()
end

puts "Cadeia >> vcccvccvv"
moore.iniciar( "vcccvccvv" )
moore.traduzir()

puts moore.reconheceu?()

automatos = moore.analisar()

automatos.each do |automato|
  puts automato.configuracao?()
end