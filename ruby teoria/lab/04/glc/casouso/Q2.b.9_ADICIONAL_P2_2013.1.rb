$: << "C:/ruby teoria/lab/04/glc"
require 'GramaticaLivreContexto'

#gramatica sem produções em vazio 1.14 nº9 da lista de exercicios

gramLivreContexto = GramaticaLivreContexto.new()

gramLivreContexto.adicionarProducao({"S" => ["aSb","aSc","B","ac","ab"]})
gramLivreContexto.adicionarProducao({"B" => [ "bB","b"]})

puts "Derivacoes elementares \r"
derivacoes = gramLivreContexto.derivar("S", 3)

derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
      puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end