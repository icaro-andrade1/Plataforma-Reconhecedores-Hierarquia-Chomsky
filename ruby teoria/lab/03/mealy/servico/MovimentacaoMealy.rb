$: << "C:/ruby teoria/lab/03/afd/servico"
require "MovimentacaoDeterministica"

class MovimentacaoMealy < MovimentacaoDeterministica
  def mover(estadosSeguintes)
    @automato.mealy.traduzirTransicao()
    super(estadosSeguintes)
  end
end
