$: << "C:/ruby teoria/lab/03/afnd/servico"
require 'MovimentacaoNaoDeterministica'

class MovimentacaoMTFL < MovimentacaoNaoDeterministica
	def mover( instrucao )
		@automato.estadoCorrente = instrucao[0]
		@automato.entrada.escrever( instrucao[1] )
		@automato.entrada.avancar() if instrucao[2] == "D"
		@automato.entrada.recuar() if instrucao[2] == "E"
	end
	
end