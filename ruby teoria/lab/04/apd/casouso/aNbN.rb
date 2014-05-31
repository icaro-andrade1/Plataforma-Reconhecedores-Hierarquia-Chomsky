$: << "C:/ruby teoria/lab/04/apd"
require 'ReconhecedorAPD'

rpd = ReconhecedorAPD.new( "q0", ["qf"] )
rpd.automato.adicionarTransicao( { [ "q0", "a", "Z0" ] => [ "q0", [ "Z0", "A" ] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "a", "A" ] => [ "q0", [ "A", "A"] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "b", "A" ] => [ "q1", [] ] } )
rpd.automato.adicionarTransicao( { [ "q1", "b", "A" ] => [ "q1", [] ] } )
rpd.automato.adicionarTransicao( { [ "q1", "", "Z0" ] => [ "qf", [] ] } )
rpd.automato.adicionarTransicao( { [ "q0", "", "Z0" ] => [ "qf", [] ] } )

cad1= "ab";
cad2= "aabb";
cad3= "aaabbb";
cad4= "aaaabbbb";
cad5= "aaaaabbbbb";
cad6= "aaaaaabbbbbb";
cad7= "aaaaaaabbbbbbb";
cad8= "aaaaaaaabbbbbbbb";
cad9= "aaaaaaaaabbbbbbbbb";
cad10= "aaaaaaaaaabbbbbbbbbb";

puts "--------------------------------------------"
puts "cadeia 1"
rpd.iniciar( cad1 )
automatos = rpd.analisar()
puts rpd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont+1;
end
puts cont

puts "--------------------------------------------"
puts "cadeia 2"
rpd.iniciar( cad2 )
automatos = rpd.analisar()
puts rpd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont+1;
end
puts cont

puts "--------------------------------------------"
puts "cadeia 3"
rpd.iniciar( cad3 )
automatos = rpd.analisar()
puts rpd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont+1;
end
puts cont

puts "--------------------------------------------"
puts "cadeia 4"
rpd.iniciar( cad4 )
automatos = rpd.analisar()
puts rpd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont+1;
end
puts cont

puts "--------------------------------------------"
puts "cadeia 5"
rpd.iniciar( cad5 )
automatos = rpd.analisar()
puts rpd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont+1;
end
puts cont

puts "--------------------------------------------"
puts "cadeia 6"
rpd.iniciar( cad6 )
automatos = rpd.analisar()
puts rpd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont+1;
end
puts cont

puts "--------------------------------------------"
puts "cadeia 7"
rpd.iniciar( cad7 )
automatos = rpd.analisar()
puts rpd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont+1;
end
puts cont

puts "--------------------------------------------"
puts "cadeia 8"
rpd.iniciar( cad8 )
automatos = rpd.analisar()
puts rpd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont+1;
end
puts cont

puts "--------------------------------------------"
puts "cadeia 9"
rpd.iniciar( cad9 )
automatos = rpd.analisar()
puts rpd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont+1;
end
puts cont

puts "--------------------------------------------"
puts "cadeia 10"
rpd.iniciar( cad10 )
automatos = rpd.analisar()
puts rpd.reconheceu?()
cont = 0;
automatos.each do |automato|
	cont = cont+1;
end
puts cont