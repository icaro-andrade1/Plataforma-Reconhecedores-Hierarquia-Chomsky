$: << "C:/ruby teoria/lab/04/glc"
require 'GramaticaLivreContexto'

glcl = GramaticaLivreContexto.new()

glcl.adicionarProducao({"E" => ["T+E", "T"]})
glcl.adicionarProducao({"T" => [ "F*T", "F" ]})
glcl.adicionarProducao({"F" => [ "(E)", "a" ]})

puts "Derivacao elementar para 3 iteracao"
puts ">>>>>>>>>>>>>>>>>>>>>>>>>"
derivacoes = glcl.derivar("E", 3)

derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
      puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end
puts ">>>>>Fim do Processo>>>>>\r"
