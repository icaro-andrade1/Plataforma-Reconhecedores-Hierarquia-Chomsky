$: << "C:/ruby teoria/lab/03/afnd"
require 'ReconhecedorNaoDeterministico'

#a.c+

rfnd = ReconhecedorNaoDeterministico.new( "q0", ["q4"] )

rfnd.automato.adicionarTransicao({["q0", "a"] => ["q3"]})
rfnd.automato.adicionarTransicao({["q3", "c"] => ["q4"]})
rfnd.automato.adicionarTransicao({["q4", "c"] => ["q4"]})

	
rfnd.iniciar("ac")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()

rfnd.iniciar("acccccccccccccccc")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()