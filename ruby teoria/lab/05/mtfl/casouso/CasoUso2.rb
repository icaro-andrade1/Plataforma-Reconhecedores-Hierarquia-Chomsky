$: << "C:/ruby teoria/lab/05/mtfl"
require 'ReconhecedorMTFL'

mtfll = ReconhecedorMTFL.new( "q0", ["qf"])

#G
mtfll.automato.adicionarTransicao({["q0", "g"] => [["q1" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q1", "g"] => [["q1" ,"g", "D"]]})
mtfll.automato.adicionarTransicao({["q1", "u"] => [["q1" ,"u", "D"]]})
mtfll.automato.adicionarTransicao({["q1", "c"] => [["q1" ,"c", "D"]]})
mtfll.automato.adicionarTransicao({["q1", "a"] => [["q1" ,"a", "D"]]})
mtfll.automato.adicionarTransicao({["q1", ">"] => [["q2" ,">", "E"]]})
mtfll.automato.adicionarTransicao({["q2", "c"] => [["q3" ,"X", "E"]]})
mtfll.automato.adicionarTransicao({["q3", "g"] => [["q3" ,"g", "E"]]})
mtfll.automato.adicionarTransicao({["q3", "a"] => [["q3" ,"a", "E"]]})
mtfll.automato.adicionarTransicao({["q3", "u"] => [["q3" ,"u", "E"]]})
mtfll.automato.adicionarTransicao({["q3", "c"] => [["q3" ,"c", "E"]]})
mtfll.automato.adicionarTransicao({["q3", "X"] => [["q16" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q16", "a"] => [["q21" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q16", "u"] => [["q23" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q16", "c"] => [["q27" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q16", "X"] => [["q17" ,"X", "D"]]})


#U
mtfll.automato.adicionarTransicao({["q0", "u"] => [["q4" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q4", "g"] => [["q4" ,"g", "D"]]})
mtfll.automato.adicionarTransicao({["q4", "u"] => [["q4" ,"u", "D"]]})
mtfll.automato.adicionarTransicao({["q4", "c"] => [["q4" ,"c", "D"]]})
mtfll.automato.adicionarTransicao({["q4", "a"] => [["q4" ,"a", "D"]]})
mtfll.automato.adicionarTransicao({["q4", ">"] => [["q5" ,">", "E"]]})
mtfll.automato.adicionarTransicao({["q5", "a"] => [["q6" ,"X", "E"]]})
mtfll.automato.adicionarTransicao({["q6", "g"] => [["q6" ,"g", "E"]]})
mtfll.automato.adicionarTransicao({["q6", "a"] => [["q6" ,"a", "E"]]})
mtfll.automato.adicionarTransicao({["q6", "u"] => [["q6" ,"u", "E"]]})
mtfll.automato.adicionarTransicao({["q6", "c"] => [["q6" ,"c", "E"]]})
mtfll.automato.adicionarTransicao({["q6", "X"] => [["q15" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q15", "g"] => [["q25" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q15", "a"] => [["q21" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q15", "c"] => [["q27" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q15", "X"] => [["q17" ,"X", "D"]]})


#C
mtfll.automato.adicionarTransicao({["q0", "c"] => [["q7" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q7", "g"] => [["q7" ,"g", "D"]]})
mtfll.automato.adicionarTransicao({["q7", "u"] => [["q7" ,"u", "D"]]})
mtfll.automato.adicionarTransicao({["q7", "c"] => [["q7" ,"c", "D"]]})
mtfll.automato.adicionarTransicao({["q7", "a"] => [["q7" ,"a", "D"]]})
mtfll.automato.adicionarTransicao({["q7", ">"] => [["q8" ,">", "E"]]})
mtfll.automato.adicionarTransicao({["q8", "g"] => [["q9" ,"X", "E"]]})
mtfll.automato.adicionarTransicao({["q9", "g"] => [["q9" ,"g", "E"]]})
mtfll.automato.adicionarTransicao({["q9", "a"] => [["q9" ,"a", "E"]]})
mtfll.automato.adicionarTransicao({["q9", "u"] => [["q9" ,"u", "E"]]})
mtfll.automato.adicionarTransicao({["q9", "c"] => [["q9" ,"c", "E"]]})
mtfll.automato.adicionarTransicao({["q9", "X"] => [["q14" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q14", "g"] => [["q25" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q14", "u"] => [["q23" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q14", "a"] => [["q21" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q14", "X"] => [["q17" ,"X", "D"]]})


#A
mtfll.automato.adicionarTransicao({["q0", "a"] => [["q10" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q10", "g"] => [["q10" ,"g", "D"]]})
mtfll.automato.adicionarTransicao({["q10", "u"] => [["q10" ,"u", "D"]]})
mtfll.automato.adicionarTransicao({["q10", "c"] => [["q10" ,"c", "D"]]})
mtfll.automato.adicionarTransicao({["q10", "a"] => [["q10" ,"a", "D"]]})
mtfll.automato.adicionarTransicao({["q10", ">"] => [["q11" ,">", "E"]]})
mtfll.automato.adicionarTransicao({["q11", "u"] => [["q12" ,"X", "E"]]})
mtfll.automato.adicionarTransicao({["q12", "g"] => [["q12" ,"g", "E"]]})
mtfll.automato.adicionarTransicao({["q12", "a"] => [["q12" ,"a", "E"]]})
mtfll.automato.adicionarTransicao({["q12", "u"] => [["q12" ,"u", "E"]]})
mtfll.automato.adicionarTransicao({["q12", "c"] => [["q12" ,"c", "E"]]})
mtfll.automato.adicionarTransicao({["q12", "X"] => [["q13" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q13", "g"] => [["q25" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q13", "u"] => [["q23" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q13", "c"] => [["q27" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q13", "X"] => [["q17" ,"X", "D"]]})

#novos estados
mtfll.automato.adicionarTransicao({["q21", "u"] => [["q22" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q22", "u"] => [["q23" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q22", "g"] => [["q25" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q22", "c"] => [["q27" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q22", "X"] => [["q17" ,"X", "D"]]})

mtfll.automato.adicionarTransicao({["q23", "a"] => [["q24" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q24", "a"] => [["q21" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q24", "g"] => [["q25" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q24", "c"] => [["q27" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q24", "X"] => [["q17" ,"X", "D"]]})

mtfll.automato.adicionarTransicao({["q25", "c"] => [["q26" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q26", "u"] => [["q23" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q26", "a"] => [["q21" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q26", "c"] => [["q27" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q26", "X"] => [["q17" ,"X", "D"]]})

mtfll.automato.adicionarTransicao({["q27", "g"] => [["q28" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q28", "u"] => [["q23" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q28", "a"] => [["q21" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q28", "g"] => [["q25" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q28", "X"] => [["q17" ,"X", "D"]]})

#estados finais
mtfll.automato.adicionarTransicao({["q17", "X"] => [["q17" ,"X", "D"]]})
mtfll.automato.adicionarTransicao({["q17", ">"] => [["qf" ,">", "E"]]})

mtfll.iniciar( "ggcc" )
automatos = mtfll.analisar()
puts mtfll.reconheceu?()


automatos.each do |automato|
	puts automato.configuracao?()
end