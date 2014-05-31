$: << "C:/ruby teoria/lab/04/glc"
require 'GramaticaLivreContexto'

glcl = GramaticaLivreContexto.new()

glcl.adicionarProducao({"E" => ["T+E", "T"]})
glcl.adicionarProducao({"T" => [ "F*T", "F" ]})
glcl.adicionarProducao({"F" => [ "(E)", "a" ]})

puts "Sentencas de tamanho 3, 4 e 5 para 10 iteracoes"
puts ">>>>>>>>>>>>>>>>>>>>>>>>>"
derivacoes = glcl.derivar("E", 10)

derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
    if substituicoes == []
      if w.length == 3
        puts "Tamanho 3"
        puts "#{w.inspect()}=>#{substituicoes.inspect()}"
      end
      
      if w.length == 4
        puts "Tamanho 4"
        puts "#{w.inspect()}=>#{substituicoes.inspect()}"
      end
      
      if w.length == 5
        puts "Tamanho 5"
        puts "#{w.inspect()}=>#{substituicoes.inspect()}"
      end
    end
  end
  
#  put
end
puts ">>>>>Fim do Processo>>>>>\r"