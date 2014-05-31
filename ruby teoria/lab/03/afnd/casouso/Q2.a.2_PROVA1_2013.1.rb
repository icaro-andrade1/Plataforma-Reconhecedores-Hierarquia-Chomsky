$: << "C:/ruby teoria/lab/03/afnd"
require 'ReconhecedorNaoDeterministico'

#Considere qa = {q1,q2}, qb = {q1,q3}, qc={q3,q4} 
#estados criados durante a eliminação de transições em vazio

rfnd = ReconhecedorNaoDeterministico.new( "q0", ["q1","q4","qa","qb"] )

rfnd.automato.adicionarTransicao({["q0", "b"] => ["qa"]})
rfnd.automato.adicionarTransicao({["q0", "d"] => ["qb"]})
rfnd.automato.adicionarTransicao({["q1", "a"] => ["q3"]})
rfnd.automato.adicionarTransicao({["q1", "b"] => ["qa"]})
rfnd.automato.adicionarTransicao({["q1", "d"] => ["qb"]})
rfnd.automato.adicionarTransicao({["q1", "e"] => ["q4"]})
rfnd.automato.adicionarTransicao({["q2", "b"] => ["q2"]})
rfnd.automato.adicionarTransicao({["q2", "d"] => ["q3"]})
rfnd.automato.adicionarTransicao({["q3", "a"] => ["q4"]})
rfnd.automato.adicionarTransicao({["q3", "c"] => ["q3"]})
rfnd.automato.adicionarTransicao({["q4", "b"] => ["qa"]})
rfnd.automato.adicionarTransicao({["q4", "d"] => ["qb"]})
rfnd.automato.adicionarTransicao({["q4", "e"] => ["q4"]})
rfnd.automato.adicionarTransicao({["qa", "a"] => ["q3"]})
rfnd.automato.adicionarTransicao({["qa", "b"] => ["qa"]})
rfnd.automato.adicionarTransicao({["qa", "d"] => ["qb"]})
rfnd.automato.adicionarTransicao({["qa", "e"] => ["q4"]})
rfnd.automato.adicionarTransicao({["qb", "a"] => ["qc"]})
rfnd.automato.adicionarTransicao({["qb", "b"] => ["qa"]})
rfnd.automato.adicionarTransicao({["qb", "c"] => ["q3"]})
rfnd.automato.adicionarTransicao({["qb", "d"] => ["qb"]})
rfnd.automato.adicionarTransicao({["qb", "e"] => ["q4"]})
rfnd.automato.adicionarTransicao({["qc", "a"] => ["q4"]})
rfnd.automato.adicionarTransicao({["qc", "b"] => ["qa"]})
rfnd.automato.adicionarTransicao({["qc", "c"] => ["q3"]})
rfnd.automato.adicionarTransicao({["qc", "d"] => ["b"]})
rfnd.automato.adicionarTransicao({["qc", "e"] => ["q4"]})
	
rfnd.iniciar("bbddddddaa")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()