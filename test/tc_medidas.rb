require 'lib/Medidas'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
	def setup
		@persona=Medidas.new(50,38,30,40,20,0)
	end
	
	def test_simple
		assert_equal("Peso:50,Talla:38,Cintura:30,Cadera:40,Edad:20,Sexo:0",@persona.to_s)
		assert_equal("50",@persona.peso.to_s)
		assert_equal("38",@persona.talla.to_s)
		assert_equal("30",@persona.cmcin.to_s)
		assert_equal("40",@persona.cmcad.to_s)
		assert_equal("20",@persona.edad.to_s)
		assert_equal("0",@persona.sexo.to_s)
	end
end
