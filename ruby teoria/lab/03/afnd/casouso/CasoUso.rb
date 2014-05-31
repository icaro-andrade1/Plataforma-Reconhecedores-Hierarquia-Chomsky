$: << "C:/ruby teoria/lab/03/afnd"
require 'ReconhecedorNaoDeterministico'

rfnd = ReconhecedorNaoDeterministico.new( "q0", [ "q2" ] )

rfnd.automato.adicionarTransicao(
	{["q0", "a"] => ["q1", "q2"]})
rfnd.automato.adicionarTransicao(
	{["q1", "b"] => ["q1", "q2"]})
rfnd.automato.adicionarTransicao(
	{["q2", "c"] => ["q2"]})
	
rfnd.iniciar("abbccc")
automatos = rfnd.analisar()
puts rfnd.reconheceu?()