$: << "C:/ruby teoria/lab/04/glc"
require 'GramaticaLivreContexto'

glcl = GramaticaLivreContexto.new()

glcl.adicionarProducao({"E" => ["T+E", "T"]})
glcl.adicionarProducao({"T" => [ "F*T", "F" ]})
glcl.adicionarProducao({"E" => [ "(E)", "a" ]})

derivacoes = glcl.derivar("E", 2)
derivacoes.each do |sentencas|
	sentencas.each do |w, substituicoes|
		puts "#{w.inspect()}=>#{substituicoes.inspect()}"
	end
end
