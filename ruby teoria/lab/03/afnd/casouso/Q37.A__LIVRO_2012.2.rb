$: << "C:/ruby teoria/lab/03/afnd"
require 'ReconhecedorNaoDeterministico'

rfnd = ReconhecedorNaoDeterministico.new( "q0", [ "q1","q4", "q7" ] )

rfnd.automato.adicionarTransicao({["q0", ] => ["q1", "q5"]})
rfnd.automato.adicionarTransicao({["q1", "a"] => ["q2"]})
rfnd.automato.adicionarTransicao({["q2", "b"] => ["q2"]})
rfnd.automato.adicionarTransicao({["q2", ] => ["q3"]})
rfnd.automato.adicionarTransicao({["q3", "c"] => ["q3"]})
rfnd.automato.adicionarTransicao({["q3", ] => ["q4"]})
rfnd.automato.adicionarTransicao({["q4", ] => ["q1"]})
rfnd.automato.adicionarTransicao({["q5", "a"] => ["q5"]})
rfnd.automato.adicionarTransicao({["q5", ] => ["q6"]})
rfnd.automato.adicionarTransicao({["q6", "b"] => ["q6"]})
rfnd.automato.adicionarTransicao({["q6", "c"] => ["q7"]})
rfnd.automato.adicionarTransicao({["q7", ] => ["q5"]})

rfnd.iniciar("abc")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()