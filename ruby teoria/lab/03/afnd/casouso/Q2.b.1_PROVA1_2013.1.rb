$: << "C:/ruby teoria/lab/03/afnd"
require 'ReconhecedorNaoDeterministico'

#a*.(ce|b).(de)*.f.g*

rfnd = ReconhecedorNaoDeterministico.new( "q0", ["q5"] )

rfnd.automato.adicionarTransicao({["q0", "a"] => ["q0"]})
rfnd.automato.adicionarTransicao({["q0", "b"] => ["q4"]})
rfnd.automato.adicionarTransicao({["q0", "c"] => ["q3"]})
rfnd.automato.adicionarTransicao({["q3", "e"] => ["q4"]})
rfnd.automato.adicionarTransicao({["q4", "d"] => ["q3"]})
rfnd.automato.adicionarTransicao({["q4", "f"] => ["q5"]})
rfnd.automato.adicionarTransicao({["q5", "c"] => ["q0"]})
rfnd.automato.adicionarTransicao({["q5", "g"] => ["q5"]})
	
rfnd.iniciar("aaaacedededefg")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()

rfnd.iniciar("aaaacefgggg")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()

rfnd.iniciar("cefg")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()

rfnd.iniciar("cef")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()