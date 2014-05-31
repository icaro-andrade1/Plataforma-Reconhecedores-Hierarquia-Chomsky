$: << "C:/ruby teoria/lab/03/afnd"
require 'AutomatoNaoDeterministico'
$: << "C:/ruby teoria/lab/05/aa/servico"
require 'MovimentacaoAA'

class AutomatoAdaptativo < AutomatoNaoDeterministico
	def iniciarMovimentacao()
		@movimentacao = MovimentacaoAA.new( self )
	end
end