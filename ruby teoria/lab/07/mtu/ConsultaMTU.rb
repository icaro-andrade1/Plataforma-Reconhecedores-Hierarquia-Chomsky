$: << "C:/ruby teoria/lab/02/af/servico"
require 'Consulta'

class ConsultaMTU < Consulta
	def estaEmEstadoFinal?()
		return @automato.estadosFinaisCodificados.include?(@automato.fitaQ.ler() )
	end
	
end