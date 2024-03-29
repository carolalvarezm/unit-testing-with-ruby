require 'lib/Medidas'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
	def setup
		@persona=Medidas.new(50,1.69,62,80,20,0)
	end
	
	def test_simple
		assert_equal("Peso:50,Talla:1.69,Cintura:62,Cadera:80,Edad:20,Sexo:0",@persona.to_s)
		assert_equal("50",@persona.peso.to_s)
		assert_equal("1.69",@persona.talla.to_s)
		assert_equal("62",@persona.cmcin.to_s)
		assert_equal("80",@persona.cmcad.to_s)
		assert_equal("20",@persona.edad.to_s)
		assert_equal("0",@persona.sexo.to_s)
		assert_equal("17.51",@persona.imc.to_s)
		assert_equal("20.21",@persona.grasa.to_s)
		assert_equal("0.775",@persona.rcc.to_s)
	end
end
