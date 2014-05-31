$: << "C:/ruby teoria/lab/06/mtfi"
require 'ReconhecedorMTFI'

r = ReconhecedorMTFI.new( "q1", ["q5"] )

r.automato.adicionarTransicao(
	{["q0", "<"] => [["q1", "<", "D"]] } )
r.automato.adicionarTransicao(
	{["q1", "a"] => [["q2", "a", "D"]] } )
r.automato.adicionarTransicao(
	{["q2", "b"] => [["q3", "b", "D"]] } )
r.automato.adicionarTransicao(
	{["q3", "c"] => [["q4", "c", "D"]] } )
r.automato.adicionarTransicao(
	{["q4", "a"] => [["q4", "a", "D"]] } )
r.automato.adicionarTransicao(
	{["q4", "b"] => [["q4", "b", "D"]] } )
r.automato.adicionarTransicao(
	{["q4", "c"] => [["q4", "c", "D"]] } )
r.automato.adicionarTransicao(
	{["q4", "B"] => [["q5", "B", "D"]] } )
	
r.iniciar( "abc" )

automatos = r.analisar()

puts r.reconheceu?()