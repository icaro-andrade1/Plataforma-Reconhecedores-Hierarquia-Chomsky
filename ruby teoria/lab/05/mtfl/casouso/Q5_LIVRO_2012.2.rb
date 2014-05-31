$: << "C:/ruby teoria/lab/05/mtfl"
require 'ReconhecedorMTFL.rb'

mtfl1 = ReconhecedorMTFL.new( "q0", ["q7"])

mtfl1.automato.adicionarTransicao( { ["q0", "X"]=>[["q0", "X", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q0", "a"]=>[["q1", "X", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q0", "b"]=>[["q6", "b", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q0", "c"]=>[["q3", "c", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q1", "a"]=>[["q2", "X", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q2", "b"]=>[["q0", "b", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q2", "a"]=>[["q2", "a", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q3", "c"]=>[["q3", "c", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q3", "Y"]=>[["q4", "Y", "E"]] } )
mtfl1.automato.adicionarTransicao( { ["q3", ">"]=>[["q4", ">", "E"]] } )
mtfl1.automato.adicionarTransicao( { ["q4", "c"]=>[["q5", "Y", "E"]] } )
mtfl1.automato.adicionarTransicao( { ["q5", "c"]=>[["q5", "c", "E"]] } )
mtfl1.automato.adicionarTransicao( { ["q5", "b"]=>[["q5", "b", "E"]] } )
mtfl1.automato.adicionarTransicao( { ["q5", "a"]=>[["q5", "a", "E"]] } )
mtfl1.automato.adicionarTransicao( { ["q5", "X"]=>[["q0", "X", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q6", "Y"]=>[["q6", "Y", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q6", ">"]=>[["q7", ">", "D"]] } )

mtfl1.iniciar( "aabc" )
automatos = mtfl1.analisar()
puts mtfl1.reconheceu?()
automatos.each do |automatos|
  puts automatos.configuracao?()
end

