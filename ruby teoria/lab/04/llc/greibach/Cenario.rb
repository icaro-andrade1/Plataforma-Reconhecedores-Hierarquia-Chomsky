require "Greibach.rb"

#configuracao da LLC
g = Greibach.new()
g.adicionarProducao({"S" => ["aBC", "bBC"]})
g.adicionarProducao({"B" => ["bB", "b"]})
g.adicionarProducao({"C" => ["c"]})

#canario 1: pertinencia de "abbc"
puts g.pertence?( "abbc" )

#canario 2: pertinencia de "bcbc"
puts g.pertence?( "bcbc" )
