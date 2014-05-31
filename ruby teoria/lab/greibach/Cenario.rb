$: << "C:/ruby teoria/lab/greibach"
require 'Greibach'

g = Greibach.new()
g.adicionarProducao({"S" => ["aBC", "bBC"]})
g.adicionarProducao({"B" => ["bB", "b"]})
g.adicionarProducao({"C" => ["c"]})


puts g.pertence?( "abbc" )

puts g.pertence?( "bcbc" )
