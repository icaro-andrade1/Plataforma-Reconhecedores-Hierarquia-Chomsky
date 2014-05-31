$: << "C:/ruby teoria/lab/04/glc"
require 'GramaticaLivreContexto'

#gramatica sem produ��es em vazio 1.14 n�9 da lista de exercicios

gramLivreContexto = GramaticaLivreContexto.new()

gramLivreContexto.adicionarProducao({"S" => ["ABS","A","B","S","AB", "AS", "BS"]})
gramLivreContexto.adicionarProducao({"A" => [ "Aa", "A" ]})
gramLivreContexto.adicionarProducao({"B" => [ "bBa","ba"]})

puts "Derivacoes elementares \r"
derivacoes = gramLivreContexto.derivar("S", 3)

derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
      puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end