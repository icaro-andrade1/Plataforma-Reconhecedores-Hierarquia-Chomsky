$: << "C:/ruby teoria/lab/05/mtfl"
require "ReconhecedorMTFL.rb"

mtfl1 = ReconhecedorMTFL.new( "q0", ["q1"])

mtfl1.automato.adicionarTransicao( { ["q0", "0"]=>[["q0", "0", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q0", "1"]=>[["q1", "1", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q1", ">"]=>[["q1", ">", "E"]] } )

#cadeia 1
mtfl1.iniciar( "0012" )
automatos = mtfl1.analisar()
puts mtfl1.reconheceu?()

automatos.each do |automatos|
  puts automatos.configuracao?()
end

#cadeia 2
mtfl1.iniciar( "022" )
automatos = mtfl1.analisar()
puts mtfl1.reconheceu?()

automatos.each do |automatos|
  puts automatos.configuracao?()
end


