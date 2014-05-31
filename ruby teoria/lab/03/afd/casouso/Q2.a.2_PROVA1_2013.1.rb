#Questao 33 - Cap 3  

$: << "C:/ruby teoria/lab/03/afd" 

require "ReconhecedorDeterministico.rb"

ex = ReconhecedorDeterministico.new( "q0", ["q3"] )

ex.automato.adicionarTransicao( {["q0", "a"] => "q1"} )
ex.automato.adicionarTransicao( {["q1", "b"] => "q1"} )
ex.automato.adicionarTransicao( {["q1", "a"] => "q2"} )
ex.automato.adicionarTransicao( {["q2", "a"] => "q2"} )
ex.automato.adicionarTransicao( {["q2", "b"] => "q3"} )
ex.automato.adicionarTransicao( {["q3", "a"] => "q0"} )


	puts ""
	puts " O automato reconhece cadeias pertencentes a linguagem (b*abc*).(a*abc*)*, logo:"
	
puts ""
print "aaba >  "
#Testando cadeia abcdabc
ex.iniciar( "aaba" )
automatos = ex.analisar()
puts ex.reconheceu?() # true

automatos.each do |automatos|
  puts automatos.configuracao?()

end

	puts ""
print "abbaabaabbbaab >  "
#Testando cadeia abdabcd
ex.iniciar( "abbaabaabbbaab" )
automatos = ex.analisar()
puts ex.reconheceu?() # false

automatos.each do |automatos|
  puts automatos.configuracao?()
end
	puts ""


