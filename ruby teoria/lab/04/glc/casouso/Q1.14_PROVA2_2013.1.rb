$: << "C:/ruby teoria/lab/04/glc"
require 'GramaticaLivreContexto'

#gramatica sem produções em vazio 1.14 prova 2

gramLivreContexto = GramaticaLivreContexto.new()

gramLivreContexto.adicionarProducao({"S" => ["ABC", "AB", "AC", "BC"]})
gramLivreContexto.adicionarProducao({"A" => [ "BB", "B" ]})
gramLivreContexto.adicionarProducao({"B" => [ "CC","C","a" ]})
gramLivreContexto.adicionarProducao({"C" => [ "AA","A","b" ]})

puts "Derivacoes elementares \r"
derivacoes = gramLivreContexto.derivar("S", 3)

derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
      puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end