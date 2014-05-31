$: << "C:/ruby teoria/lab/03/afnd"
require 'ReconhecedorNaoDeterministico'

rfnd = ReconhecedorNaoDeterministico.new( "q0", ["q5"] )

rfnd.automato.adicionarTransicao({["q0", "b"] => ["q4"]})
rfnd.automato.adicionarTransicao({["q4", "b"] => ["q4"]})
rfnd.automato.adicionarTransicao({["q4", "c"] => ["q5"]})
rfnd.automato.adicionarTransicao({["q5", "a"] => ["q0"]})
	
rfnd.iniciar("bbbbbbbbcabc")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()

rfnd.iniciar("bcbc")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()


rfnd.iniciar("bcabc")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()