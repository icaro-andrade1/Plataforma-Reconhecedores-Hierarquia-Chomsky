$: << "C:/ruby teoria/lab/04/glc"
require 'GramaticaLivreContexto'

glcl = GramaticaLivreContexto.new()

glcl.adicionarProducao({"J" => [ "S", "G" ]})
glcl.adicionarProducao({"S" => [ "aTC" ]})
glcl.adicionarProducao({"T" => [ "aTC", "aC", "aXC" ]})
glcl.adicionarProducao({"X" => [ "bX", "b" ]})
glcl.adicionarProducao({"G" => [ "aGC", "aYC", "aC" ]})
glcl.adicionarProducao({"Y" => [ "bY", "b" ]})
glcl.adicionarProducao({"C" => [ "c" ]})

derivacoes = glcl.derivar("J", 3)

derivacoes.each do |sentencas|
	sentencas.each do |w, substituicoes|
		puts "#{w.inspect()}=>#{substituicoes.inspect()}"
	end
end
