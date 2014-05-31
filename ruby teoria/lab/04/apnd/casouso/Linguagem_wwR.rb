$: << "C:/ruby teoria/lab/04/apnd"
require 'ReconhecedorAPND.rb'

rpnd = ReconhecedorAPND.new( "q0", ["qf"] )

rpnd.automato.adicionarTransicao({["q0", "a", "Z0"] => [["q0", ["Z0","a"]]]})
rpnd.automato.adicionarTransicao({["q0", "b", "Z0"] => [["q0", ["Z0","b"]]]})

rpnd.automato.adicionarTransicao({["q0", "a", "a"] => [["q0", ["a","a"]], ["q1", []]]})
rpnd.automato.adicionarTransicao({["q0", "a", "b"] => [["q0", ["b","a"]]]})
	
rpnd.automato.adicionarTransicao({["q0", "b", "b"] => [["q0", ["b","b"]], ["q1", []]]})
rpnd.automato.adicionarTransicao({["q0", "b", "a"] => [["q0", ["a","b"]]]})

rpnd.automato.adicionarTransicao({["q1", "b", "b"] => [["q1", []]]})
rpnd.automato.adicionarTransicao({["q1", "a", "a"] => [["q1", []]]})
rpnd.automato.adicionarTransicao({["q1", "", "Z0"] => [["qf", []]]})

cad1 = "aa";
cad2 = "aaaa";
cad3 = "abaaba";
cad4 = "ababbaba";
cad5 = "ababbbbaba";
cad6 = "ababbaabbaba";
cad7 = "ababbabbabbaba";
cad8 = "ababbabaababbaba";
cad9 = "ababbababbababbaba";
cad10 = "ababbababaabababbaba";


puts "--------------------------------------------"
puts "cadeia 1"
rpnd.iniciar( cad1 )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont + 1;
end
puts  cont
puts "--------------------------------------------"


puts "--------------------------------------------"
puts "cadeia 2"
rpnd.iniciar( cad2 )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont + 1;
end
puts  cont
puts "--------------------------------------------"


puts "--------------------------------------------"
puts "cadeia 3"
rpnd.iniciar( cad3 )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont + 1;
end
puts  cont
puts "--------------------------------------------"


puts "--------------------------------------------"
puts "cadeia 4"
rpnd.iniciar( cad4 )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont + 1;
end
puts  cont
puts "--------------------------------------------"


puts "--------------------------------------------"
puts "cadeia 5"
rpnd.iniciar( cad5 )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont + 1;
end
puts  cont
puts "--------------------------------------------"


puts "--------------------------------------------"
puts "cadeia 6"
rpnd.iniciar( cad6 )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont + 1;
end
puts  cont
puts "--------------------------------------------"


puts "--------------------------------------------"
puts "cadeia 7"
rpnd.iniciar( cad7 )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont + 1;
end
puts  cont
puts "--------------------------------------------"


puts "--------------------------------------------"
puts "cadeia 8"
rpnd.iniciar( cad8 )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont + 1;
end
puts  cont
puts "--------------------------------------------"


puts "--------------------------------------------"
puts "cadeia 9"
rpnd.iniciar( cad9 )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont + 1;
end
puts  cont
puts "--------------------------------------------"


puts "--------------------------------------------"
puts "cadeia 10"
rpnd.iniciar( cad10 )
automatos = rpnd.analisar()
puts rpnd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont + 1;
end
puts  cont
puts "--------------------------------------------"