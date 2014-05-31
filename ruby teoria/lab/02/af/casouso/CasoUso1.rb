$: << "C:/ruby teoria/lab/02/af"
require 'FitaLimitada'

entrada = FitaLimitada.new()
entrada.iniciar( "abc" )
puts entrada.configuracao?()

entrada.avancar()
entrada.avancar()
puts entrada.configuracao?()

