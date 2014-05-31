$: << "C:/ruby teoria/lab/04/glc"
require 'GramaticaLivreContexto'

glcl = GramaticaLivreContexto.new()

glcl.adicionarProducao({"E" => ["T+E", "T"]})
glcl.adicionarProducao({"T" => [ "F*T", "F" ]})
glcl.adicionarProducao({"F" => [ "(E)", "a" ]})

puts "Derivacao para 1 iteracao"
puts ">>>>>>>>>>>>>>>>>>>>>>>>>"
derivacoes = glcl.derivar("E", 1)

derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
    puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end
puts ">>>>>Fim do Processo>>>>>\r"

puts "Derivacao para 2 iteracoes"
puts ">>>>>>>>>>>>>>>>>>>>>>>>>"
derivacoes = glcl.derivar("E", 2)

derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
    puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end
puts ">>>>>Fim do Processo>>>>>\r"

puts "Derivacao para 3 iteracoes"
puts ">>>>>>>>>>>>>>>>>>>>>>>>>"
derivacoes = glcl.derivar("E", 3)

derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
    puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end
puts ">>>>>Fim do Processo>>>>>\r"

puts "Derivacao para 4 iteracoes"
puts ">>>>>>>>>>>>>>>>>>>>>>>>>"
derivacoes = glcl.derivar("E", 4)

derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
    puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end
puts ">>>>>Fim do Processo>>>>>\r"