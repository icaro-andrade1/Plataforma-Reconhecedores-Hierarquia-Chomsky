$: << "C:/ruby teoria/lab/04/glc"
require 'GramaticaLivreContexto'

gramLivreContexto = GramaticaLivreContexto.new()

gramLivreContexto.adicionarProducao({"E" => ["T+E", "T"]})
gramLivreContexto.adicionarProducao({"T" => [ "F*T", "F" ]})
gramLivreContexto.adicionarProducao({"F" => [ "(E)", "a" ]})

puts "Derivacoes elementares \r"
derivacoes = gramLivreContexto.derivar("E", 3)

derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
      puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end