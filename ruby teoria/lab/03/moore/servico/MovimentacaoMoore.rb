$: << "C:/ruby teoria/lab/03/afd/servico"
require 'MovimentacaoDeterministica'

class MovimentacaoMoore < MovimentacaoDeterministica
	def mover( estadosSeguintes )
		@automato.moore.traduzirEstado()
		super( estadosSeguintes )
	end

end