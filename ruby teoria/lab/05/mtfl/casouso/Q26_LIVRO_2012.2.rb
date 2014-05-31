$: << "C:/ruby teoria/lab/05/mtfl"
require 'ReconhecedorMTFL'

mtfll = ReconhecedorMTFL.new( "q0", ["qf"])

mtfll.automato.adicionarTransicao(
  {["q0", "<"] => [["q0", "<", "D"]]})
mtfll.automato.adicionarTransicao(
  {["q0", "a"] => [["q1" ,"A", "D"]]})
mtfll.automato.adicionarTransicao(
  {["q1", "a"] => [["q1" ,"a", "D"]]})
mtfll.automato.adicionarTransicao(
  {["q1", "B"] => [["q1" ,"B", "D"]]})
mtfll.automato.adicionarTransicao(
  {["q1", "b"] => [["q2" ,"B", "D"]]})
mtfll.automato.adicionarTransicao(
  {["q2", "b"] => [["q2", "b", "D"]]})
mtfll.automato.adicionarTransicao(
  {["q2", "C"] => [["q2" ,"C", "D"]]})
mtfll.automato.adicionarTransicao(
  {["q2", "c"] => [["q3" ,"C", "E"]]})
mtfll.automato.adicionarTransicao(
  {["q3", "C"] => [["q3", "C", "E"]]})
mtfll.automato.adicionarTransicao(
  {["q3", "b"] => [["q3", "b", "E"]]})
mtfll.automato.adicionarTransicao(
  {["q3", "B"] => [["q3", "B", "E"]]})
mtfll.automato.adicionarTransicao(
  {["q3", "a"] => [["q3", "a", "E"]]})
mtfll.automato.adicionarTransicao(
  {["q3", "A"] => [["q0", "A", "D"]]})
mtfll.automato.adicionarTransicao(
  {["q0", "B"] => [["q4", "B", "D"]]})
mtfll.automato.adicionarTransicao(
  {["q4", "B"] => [["q4" ,"B", "D"]]})
mtfll.automato.adicionarTransicao(
  {["q4", "C"] => [["q4", "C", "D"]]})
mtfll.automato.adicionarTransicao(
  {["q4", ">"] => [["qf", ">", "E"]]})
  
mtfll.iniciar( "aabc" )
automatos = mtfll.analisar()
puts mtfll.reconheceu?()

automatos.each do |automato|
  puts automato.configuracao?()
end 
 
mtfll.iniciar( "abc" )
automatos = mtfll.analisar()
puts mtfll.reconheceu?()

automatos.each do |automato|
  puts automato.configuracao?()
end