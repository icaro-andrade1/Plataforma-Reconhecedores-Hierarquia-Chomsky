$: << "C:/ruby teoria/lab/greibach"
require 'Greibach'

gFNG = Greibach.new()

gFNG.adicionarProducao({"T" => ["aR", "aS"]})

gFNG.adicionarProducao({"R" => ["aXBCYD"]})
gFNG.adicionarProducao({"X" => ["aXB","b"]})
gFNG.adicionarProducao({"B" => ["b"]})
gFNG.adicionarProducao({"Y" => ["CYD","cD"]})
gFNG.adicionarProducao({"C" => ["c"]})
gFNG.adicionarProducao({"D" => ["d"]})

gFNG.adicionarProducao({"S" => ["aSE", "bUF"]})
gFNG.adicionarProducao({"U" => ["bUF","bF"]})
gFNG.adicionarProducao({"F" => ["c"]})
gFNG.adicionarProducao({"E" => ["dG"]})
gFNG.adicionarProducao({"G" => ["d"]})

puts gFNG.pertence?("aabbcccddd")

