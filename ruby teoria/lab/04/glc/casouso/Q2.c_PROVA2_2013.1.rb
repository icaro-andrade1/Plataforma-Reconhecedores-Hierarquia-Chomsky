$: << "C:/ruby teoria/lab/04/glc"
require 'GramaticaLivreContexto'

#gramatica sem produções em vazio 1.14 nº9 da lista de exercicios

gramLivreContexto = GramaticaLivreContexto.new()

gramLivreContexto.adicionarProducao({"S" => ["A"]})
gramLivreContexto.adicionarProducao({"A" => [ "aBC" ]})
gramLivreContexto.adicionarProducao({"B" => [ "aBD","D"]})
gramLivreContexto.adicionarProducao({"C" => [ "b"]})
gramLivreContexto.adicionarProducao({"D" => [ "b","DD"]})

puts "Derivacoes elementares \r"
derivacoes = gramLivreContexto.derivar("S", 3)

derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
      puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end