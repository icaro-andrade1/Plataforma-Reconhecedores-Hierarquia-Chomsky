$: << "C:/ruby teoria/lab/05/mtfl"
require 'ReconhecedorMTFL.rb'

mtfl1 = ReconhecedorMTFL.new( "q0", ["qf"])
mtfl1.automato.adicionarTransicao( { ["q0", "<"]=>[["q0", "<", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q0", "x"]=>[["q0", "x", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q0", ">"]=>[["qf", ">", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q0", "a"]=>[["q1", "x", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q1", "x"]=>[["q1", "x", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q1", "a"]=>[["q1", "a", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q1", "b"]=>[["q2", "x", "E"]] } )
mtfl1.automato.adicionarTransicao( { ["q2", "a"]=>[["q2", "a", "E"]] } )
mtfl1.automato.adicionarTransicao( { ["q2", "x"]=>[["q0", "x", "D"]] } )
puts
puts "LBA que aceita cadeias da linguagem {a^nb^n / n>=0}"

puts "Cadeia abbb"
mtfl1.iniciar( "abbb" )
automatos = mtfl1.analisar()
puts mtfl1.reconheceu?()
automatos.each do |automatos|
  puts automatos.configuracao?()
end

puts "Cadeia aabb"
mtfl1.iniciar( "aabb" )
automatos = mtfl1.analisar()
puts mtfl1.reconheceu?()
automatos.each do |automatos|
  puts automatos.configuracao?()
end

