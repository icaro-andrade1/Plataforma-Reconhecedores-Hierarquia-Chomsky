class MovimentoAA
	def calcularOndaDeClones()
		ondaDeClones = {}
		@automato.topologia.listaTAs.each do |ta|
			if( ta.habilitada?( @automato.subjacente ) )
				clone = @automato.clonar()
				ondaDeClones[ clone ] = ta
			end
		end
		return ondaDeClones
	end
	
	def mover( transicao )
		ta = @automato.recuperarTA( transicao )
		ta.mover( self )
	end
	
	def moverTA( ta )
		ta.aplicarFAB( @automato.topologia )
		if( @automato.topologia.include?( ta ) )
			ta.moverTS( @automato.subjacente )
			ta.aplicarFAA( @automato.topologia )
		end
	end
end