$: << "C:/ruby teoria/lab/05/mtfl"
require 'ReconhecedorMTFL'

mtfll = ReconhecedorMTFL.new( "q0", ["qf"])

mtfll.automato.adicionarTransicao(
	{["q0", "<"] => [["q0", "<", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q0", "a"] => [["q1", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q1", "a"] => [["q1", "a", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q1", "X"] => [["q1", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q1", "b"] => [["q3", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q1", "c"] => [["q5", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q3", "a"] => [["q3", "a", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q3", "b"] => [["q3", "b", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q3", "X"] => [["q3", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q3", "c"] => [["q4", "X", "E"]]})
mtfll.automato.adicionarTransicao(
	{["q5", "a"] => [["q5", "a", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q5", "c"] => [["q5", "c", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q5", "X"] => [["q5", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q5", "b"] => [["q4", "X", "E"]]})
mtfll.automato.adicionarTransicao(
	{["q4", "a"] => [["q4", "a", "E"]]})
mtfll.automato.adicionarTransicao(
	{["q4", "b"] => [["q4", "b", "E"]]})
mtfll.automato.adicionarTransicao(
	{["q4", "c"] => [["q4", "c", "E"]]})
mtfll.automato.adicionarTransicao(
	{["q4", "X"] => [["q4", "X", "E"]]})
mtfll.automato.adicionarTransicao(
	{["q4", "<"] => [["q0", "<", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q0", "X"] => [["q0", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q0", "b"] => [["q6", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q6", "X"] => [["q6", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q6", "b"] => [["q6", "b", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q6", "a"] => [["q7", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q7", "X"] => [["q7", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q7", "a"] => [["q7", "a", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q7", "b"] => [["q7", "b", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q7", "c"] => [["q4", "c", "E"]]})
mtfll.automato.adicionarTransicao(
	{["q6", "c"] => [["q8", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q8", "c"] => [["q8", "c", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q8", "b"] => [["q8", "b", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q8", "X"] => [["q8", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q8", "a"] => [["q4", "X", "E"]]})
mtfll.automato.adicionarTransicao(
	{["q0", "c"] => [["q9", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q9", "X"] => [["q9", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q9", "c"] => [["q9", "c", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q9", "a"] => [["q10", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q10", "X"] => [["q10", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q10", "a"] => [["q10", "a", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q10", "c"] => [["q10", "c", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q10", "b"] => [["q4", "X", "E"]]})
mtfll.automato.adicionarTransicao(
	{["q9", "b"] => [["q11", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q11", "b"] => [["q11", "b", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q11", "c"] => [["q11", "c", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q11", "X"] => [["q11", "X", "D"]]})
mtfll.automato.adicionarTransicao(
	{["q11", "a"] => [["q4", "X", "E"]]})
mtfll.automato.adicionarTransicao(
	{["q0", ">"] => [["q12", ">", "E"]]})
mtfll.automato.adicionarTransicao(
	{["q12", "X"] => [["qf", "X", "D"]]})
	
mtfll.iniciar( "acbacb" )
automatos = mtfll.analisar()
puts mtfll.reconheceu?()

automatos.each do |automato|
	puts automato.configuracao?()
end