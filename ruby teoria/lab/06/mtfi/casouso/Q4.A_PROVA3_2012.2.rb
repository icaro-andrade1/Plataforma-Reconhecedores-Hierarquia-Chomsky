$: << "C:/ruby teoria/lab/06/mtfi"
require 'ReconhecedorMTFI'

mtfi = ReconhecedorMTFI.new( "q0", ["qf"])

mtfi.automato.adicionarTransicao(
	{["q0", "<"] => [["q0", "<", "D"]]})
mtfi.automato.adicionarTransicao(
	{["q0", "a"] => [["q1" ,"A", "D"]]})
mtfi.automato.adicionarTransicao(
	{["q1", "a"] => [["q1" ,"a", "D"]]})
mtfi.automato.adicionarTransicao(
	{["q1", "X"] => [["q1" ,"X", "D"]]})
mtfi.automato.adicionarTransicao(
	{["q1", "b"] => [["q2" ,"X", "D"]]})
mtfi.automato.adicionarTransicao(
	{["q2", "b"] => [["q2", "b", "D"]]})
mtfi.automato.adicionarTransicao(
	{["q2", "C"] => [["q2" ,"C", "D"]]})
mtfi.automato.adicionarTransicao(
	{["q2", "c"] => [["q3" ,"C", "E"]]})
mtfi.automato.adicionarTransicao(
	{["q3", "C"] => [["q3", "C", "E"]]})
mtfi.automato.adicionarTransicao(
	{["q3", "b"] => [["q3", "b", "E"]]})
mtfi.automato.adicionarTransicao(
	{["q3", "X"] => [["q3", "X", "E"]]})
mtfi.automato.adicionarTransicao(
	{["q3", "a"] => [["q3", "a", "E"]]})
mtfi.automato.adicionarTransicao(
	{["q3", "A"] => [["q0", "A", "D"]]})
mtfi.automato.adicionarTransicao(
	{["q0", "X"] => [["q4", "X", "D"]]})
mtfi.automato.adicionarTransicao(
	{["q4", "X"] => [["q4" ,"X", "D"]]})
mtfi.automato.adicionarTransicao(
	{["q4", "C"] => [["q4", "C", "D"]]})
mtfi.automato.adicionarTransicao(
	{["q4", "B"] => [["qf", "B", "E"]]})
	
mtfi.iniciar( "aabbcc" )
automatos = mtfi.analisar()
puts mtfi.reconheceu?()

automatos.each do |automato|
	puts automato.configuracao?()
end