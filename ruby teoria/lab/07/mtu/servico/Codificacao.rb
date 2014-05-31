class Codificacao
	def padraoEstado()
		return /a+/
	end
	
	def codificarEstado( i, estadosFinais )
		return "a" * ((2*i) + 1) if( estadosFinais.include?( i ) )
		return "a" * ( 2 * (i+1))
	end
	
	def padraoSimbolo()
		return /b+a|bba|ba/
	end
	
	def codificarSimbolo( s )
		return "ba" if( s == "<" )
		return "bba" if( s == "B" )
		return "b" * (s.to_i + 3) + "a"
	end
	
	def padraoCursor()
		return /cc|c/
	end
	
	def codificarMovimentoCursor( m )
		return "c" if( m == "E" )
		return "cc" if( m == "D" )
	end
	
	def padraoTransicao()
		return /#(padraoEstado)#(padraoSimbolo)
				#(padraoEstado)#(padraoSimbolo)#(padraoCursor)/
	end
	
	def codificarTransicao( qi, sm, qj, sn, e, estadosFinais )
		codQI = codificarEstado( qi, estadosFinais )
		codSM = codificarSimbolo(sm)
		codQJ = codificarEstado( qj, estadosFinais )
		codSN = codificarSimbolo(sn)
		codE = codificarMovimentoCursor(e)
		return "%s%s%s%s%s" % [ codQI, codSM, codQJ, codSN, codE ]
	end
	
	def separar( transicao )
		partes = transicao.scan(
			/(#{padraoEstado})(#{padraoSimbolo})
			 (#{padraoEstado})(#{padraoSimbolo})(#{padraoCursor})/)
		r = partes[0]
		return r
	end

end