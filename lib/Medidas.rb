class Medidas
	attr_reader :peso, :talla, :cmcin, :cmcad, :edad, :sexo
	def initialize(peso,talla,cmcin,cmcad,edad,sexo)
		@peso,@talla,@cmcin,@cmcad,@edad,@sexo=peso,talla,cmcin,cmcad,edad,sexo
	end

	def to_s
		"Peso:#{@peso},Talla:#{@talla},Cintura:#{@cmcin},Cadera:#{@cmcad},Edad:#{@edad},Sexo:#{@sexo}"
	end
	
	def imc
		@peso/(@talla*@talla)
	end
end

