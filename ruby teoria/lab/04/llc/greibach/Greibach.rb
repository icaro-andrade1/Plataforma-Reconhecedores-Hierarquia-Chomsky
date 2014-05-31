require "GramaticaGreibach.rb"

class Greibach

#interface de instanciacao
  def initialize()
    @glc = GramaticaGreibach.new()
  end


#interface de ajuste estrutural
  def adicionarProducao( producao )
    @glc.adicionarProducao( producao )
  end

#interface caracteristica
  def pertence?( w )
    @substituicoes = calcularSubstituicoes( w )
    return true if( @substituicoes.include?(w) )
    return false
  end

  def calcularSubstituicoes( w )
    return @glc.calcularSubstituicoes( w )
  end

end

