$: << "C:/ruby teoria/lab/06/mtfi"
require 'ReconhecedorMTFI.rb'

mtfl1 = ReconhecedorMTFI.new( "q0", ["q10"])

mtfl1.automato.adicionarTransicao( { ["q0", "x"]=>[["q1", "X", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q1", "y"]=>[["q2", "Y", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q2", "z"]=>[["q3", "Z", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q3", "B"]=>[["q4", "x", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q4", "B"]=>[["q5", "B", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q5", "B"]=>[["q6", "y", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q6", "B"]=>[["q7", "B", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q7", "B"]=>[["q8", "z", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q8", "B"]=>[["q9", "B", "E"]] } )
mtfl1.automato.adicionarTransicao( { ["q9", "z"]=>[["q10", "z", "D"]] } )
mtfl1.automato.adicionarTransicao( { ["q10", "B"]=>[[]] } )

mtfl1.iniciar( "xyz" )
automatos = mtfl1.analisar()
puts mtfl1.reconheceu?()
automatos.each do |automatos|
  puts automatos.configuracao?()
end

