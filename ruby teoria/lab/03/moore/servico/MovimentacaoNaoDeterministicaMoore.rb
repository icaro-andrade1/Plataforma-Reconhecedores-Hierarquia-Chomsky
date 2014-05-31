$: << "C:/ruby teoria/lab/03/afnd/servico"
require 'MovimentacaoNaoDeterministica'

class MovimentacaoNaoDeterministicaMoore < MovimentacaoNaoDeterministica
  def mover( estadosSeguintes )
    @automato.moore.traduzirEstado()
    super( estadosSeguintes )
  end

end