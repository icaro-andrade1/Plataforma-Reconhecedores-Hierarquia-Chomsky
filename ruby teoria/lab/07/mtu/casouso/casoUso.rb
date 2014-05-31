$: << "C:/ruby teoria/lab/07/mtu"
require 'ReconhecedorMTU'

r = ReconhecedorMTU.new( 0, [2])

r.automato.adicionarTransicao([0,"0", 1, "0", "D"])
r.automato.adicionarTransicao([1,"1", 1, "1", "D"])
r.automato.adicionarTransicao([1,"B", 2, "B", "E"])

puts
r.iniciar( "0111" )
automatos = r.analisar()
puts r.reconheceu?()

automatos.each do |automato|
  puts automato.configuracao?()
end