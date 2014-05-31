$: << "C:/ruby teoria/lab/03/afnd"
require 'ReconhecedorNaoDeterministico'

#a.c*.b

rfnd = ReconhecedorNaoDeterministico.new( "q0", ["q2"] )

rfnd.automato.adicionarTransicao({["q0", "a"] => ["q3"]})
rfnd.automato.adicionarTransicao({["q3", "c"] => ["q3"]})
rfnd.automato.adicionarTransicao({["q3", "b"] => ["q2"]})
rfnd.automato.adicionarTransicao({["q2", "c"] => ["q2"]})
rfnd.automato.adicionarTransicao({["q2", "c"] => ["q0"]})
	
rfnd.iniciar("ab")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()

rfnd.iniciar("acb")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()

rfnd.iniciar("accccccb")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()

rfnd.iniciar("aaccccccbb")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()