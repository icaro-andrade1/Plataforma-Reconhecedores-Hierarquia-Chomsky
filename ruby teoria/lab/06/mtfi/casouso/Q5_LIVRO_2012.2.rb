$: << "C:/ruby teoria/lab/06/mtfi"
require 'ReconhecedorMTFI.rb'

r = ReconhecedorMTFI.new("q0", ["q4"])

r.automato.adicionarTransicao({["q0", "a"]=>[["q1", "a", "D"]] })
r.automato.adicionarTransicao({["q1", "b"]=>[["q2", "b", "D"]] })
r.automato.adicionarTransicao({["q2", "c"]=>[["q3", "c", "D"]] })
r.automato.adicionarTransicao({["q3", "a"]=>[["q3", "a", "D"]] })
r.automato.adicionarTransicao({["q3", "b"]=>[["q3", "b", "D"]] })
r.automato.adicionarTransicao({["q3", "c"]=>[["q3", "c", "D"]] })
r.automato.adicionarTransicao({["q3", "B"]=>[["q4", "B", "E"]] })

#cenario 1
r.iniciar( "abc" )
automatos = r.analisar()
puts r.reconheceu?()

automatos.each do |automatos|
  puts automatos.configuracao?()
end

