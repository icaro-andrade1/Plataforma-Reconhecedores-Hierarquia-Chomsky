$: << "C:/ruby teoria/lab/02/af/servico"
require 'Clonagem'
$: << "C:/ruby teoria/lab/04/apd"
require 'Pilha'

class PilhaAPE < Pilha
	def push( estado )
		@conteudo.push( estado )
	end
end