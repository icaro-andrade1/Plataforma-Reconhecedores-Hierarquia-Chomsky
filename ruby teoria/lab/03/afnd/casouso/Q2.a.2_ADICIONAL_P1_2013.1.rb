$: << "C:/ruby teoria/lab/03/afnd"
require 'ReconhecedorNaoDeterministico'


rfnd = ReconhecedorNaoDeterministico.new( "q0", ["q2"] )

rfnd.automato.adicionarTransicao({["q0", "a"] => ["q1"]})
rfnd.automato.adicionarTransicao({["q0", "b"] => ["q2"]})
rfnd.automato.adicionarTransicao({["q1", "a"] => ["q1"]})
rfnd.automato.adicionarTransicao({["q1", "b"] => ["q2"]})
rfnd.automato.adicionarTransicao({["q2", "a"] => ["q0"]})
rfnd.automato.adicionarTransicao({["q2", "b"] => ["q2"]})
rfnd.automato.adicionarTransicao({["q3", "a"] => ["q0"]})

rfnd.iniciar("aaaaaaababbbbbbbb")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()