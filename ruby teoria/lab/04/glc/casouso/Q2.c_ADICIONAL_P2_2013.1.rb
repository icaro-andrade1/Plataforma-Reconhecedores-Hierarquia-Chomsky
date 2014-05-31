$: << "C:/ruby teoria/lab/04/glc"
require 'GramaticaLivreContexto'

glcl = GramaticaLivreContexto.new()

glcl.adicionarProducao({ "W" => [ "S", "G" ]})
glcl.adicionarProducao({ "S" => [ "HC" ]})
glcl.adicionarProducao({ "H" => [ "AT" ]})
glcl.adicionarProducao({ "T" => [ "HC", "AC", "JC" ]})
glcl.adicionarProducao({ "J" => [ "AX" ]})
glcl.adicionarProducao({ "X" => [ "BX", "b" ]})
glcl.adicionarProducao({ "G" => [ "KC", "LC", "AC" ]})
glcl.adicionarProducao({ "K" => [ "AG" ]})
glcl.adicionarProducao({ "L" => [ "AY" ]})
glcl.adicionarProducao({ "Y" => [ "BY", "b" ]})
glcl.adicionarProducao({ "A" => [ "a" ]})
glcl.adicionarProducao({ "B" => [ "b" ]})
glcl.adicionarProducao({ "C" => [ "c" ]})

derivacoes = glcl.derivar("W", 3)

derivacoes.each do |sentencas|
	sentencas.each do |w, substituicoes|
		puts "#{w.inspect()}=>#{substituicoes.inspect()}"
	end
end
