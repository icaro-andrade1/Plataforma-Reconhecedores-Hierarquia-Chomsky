$: << "C:/ruby teoria/lab/05/gsc"
require 'GramaticaSensivelContexto'

gramSensivContex = GramaticaSensivelContexto.new()

gramSensivContex.adicionarProducao( {"S" => ["aSBC", "aBC"] } )
gramSensivContex.adicionarProducao( {"CB" => ["BC"] } )
gramSensivContex.adicionarProducao( {"aB" => ["ab"] } )
gramSensivContex.adicionarProducao( {"bB" => ["bb"] } )
gramSensivContex.adicionarProducao( {"bC" => ["bc"] } )
gramSensivContex.adicionarProducao( {"cC" => ["cc"] } )

derivacoes = gramSensivContex.derivar( "S", 7 )

derivacoes.each do |sentencas|
  sentencas.each do |w, substituicoes|
      puts "#{w.inspect()}=>#{substituicoes.inspect()}"
  end
end

