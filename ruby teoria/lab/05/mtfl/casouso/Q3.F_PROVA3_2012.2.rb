$: << "C:/ruby teoria/lab/05/mtfl"
require 'ReconhecedorMTFL.rb'

mtfl1 = ReconhecedorMTFL.new( "q0", ["qf"])


mtfl1.automato.adicionarTransicao( { ["q0", "<"]=>[["q0", "<", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q0", "a"]=>[["q1", "x", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q1", "x"]=>[["q1", "x", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q1", "a"]=>[["q1", "a", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q1", "b"]=>[["q1", "b", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q1", "c"]=>[["q2", "x", "E"]] } )
mtfl1.automato.adicionarTransicao( { ["q2", "a"]=>[["q2", "a", "E"]] } )
mtfl1.automato.adicionarTransicao( { ["q2", "b"]=>[["q2", "b", "E"]] } )
mtfl1.automato.adicionarTransicao( { ["q2", "x"]=>[["q2", "x", "E"]] } )
mtfl1.automato.adicionarTransicao( { ["q2", ">"]=>[["q3", ">", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q3", "b"]=>[["q3", "b", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q3", "x"]=>[["q3", "x", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q3", "a"]=>[["q1", "x", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q3", ">"]=>[["qf", ">", "D"]] } )



puts "LBA que aceita cadeias da linguagem {a^nb*c^n / n>=1}"

puts "Cadeia aaaccc "
mtfl1.iniciar( "aaaccc" )
automatos = mtfl1.analisar()
puts mtfl1.reconheceu?()

puts "Cadeia abbbbbbbc"
mtfl1.iniciar( "abbbbbbbc" )
automatos = mtfl1.analisar()
puts mtfl1.reconheceu?()

puts "Cadeia bbbccc"
mtfl1.iniciar( "bbbccc" )
automatos = mtfl1.analisar()
puts mtfl1.reconheceu?()

puts "Cadeia aab"
mtfl1.iniciar( "aab" )
automatos = mtfl1.analisar()
puts mtfl1.reconheceu?()


