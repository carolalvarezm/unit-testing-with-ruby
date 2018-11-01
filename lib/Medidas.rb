class Medidas
	attr_reader :peso, :talla, :cmcin, :cmcad, :edad, :sexo
	def initialize(peso,talla,cmcin,cmcad,edad,sexo)
		@peso,@talla,@cmcin,@cmcad,@edad,@sexo=peso,talla,cmcin,cmcad,edad,sexo
	end

	def to_s
		"Peso:#{@peso},Talla:#{@talla},Cintura:#{@cmcin},Cadera:#{@cmcad},Edad:#{@edad},Sexo:#{@sexo}"
	end
	
	def imc
		(@peso/(@talla*@talla)).round(2)#Redondear a dos cifras decimales
	end
	
	def grasa
		((1.2*(self.imc))+(0.23*@edad)-(10.8*sexo)-5.4).round(2)
	end
	
	def rcc
		(@cmcin/@cmcad)
	end
end

