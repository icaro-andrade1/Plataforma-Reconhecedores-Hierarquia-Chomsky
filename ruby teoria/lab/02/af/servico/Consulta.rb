class Consulta
    def initialize( automato )
        @automato = automato
    end
    def estadoCorrente?()
        return @automato.estadoCorrente
    end
    def estadosFinais?()
        return @automato.estadosFinais
    end
    def estaEmEstadoFinal?()
        return @automato.estadosFinais.include?( @automato.estadoCorrente )
    end
    def atingiuBOF?()
        return @automato.entrada.atingiuBOF?()
    end
    def atingiuEOF?()
        return @automato.entrada.atingiuEOF?()
    end
    def configuracao?()
        return "(%s, %s)"% [@automato.estadoCorrente, @automato.entrada.configuracao?()]
    end
end
