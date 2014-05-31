$: << "C:/ruby teoria/lab/04/glc"
require 'GramaticaLivreContexto'
gramLivreContexto = GramaticaLivreContexto.new()
gramLivreContexto.adicionarProducao({"E" => ["T+E", "T"]})
gramLivreContexto.adicionarProducao({"T" => [ "F*T", "F" ]})
gramLivreContexto.adicionarProducao({"F" => [ "(E)", "a" ]})
puts "-----Derivacao para 1 iteracao-----"
derivacoes = gramLivreContexto.derivar("E", 1)
derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
    puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end
puts "------------------------------------\r"
puts "-----Derivacao para 2 iteracoes-----"
derivacoes = gramLivreContexto.derivar("E", 2)
derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
    puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end
puts "------------------------------------\r"
puts "-----Derivacao para 3 iteracoes-----"
derivacoes = gramLivreContexto.derivar("E", 3)
derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
    puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end
puts "------------------------------------\r"
puts "-----Derivacao para 4 iteracoes-----"
derivacoes = gramLivreContexto.derivar("E", 4)
derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
    puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end
puts "------------------------------------\r"