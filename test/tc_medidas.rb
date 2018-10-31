require 'lib/Medidas'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
	def setup
		@persona=Medidas.new(50,38,30,40,20,0)
	end
	
	def test_simple
		assert_equal("Peso:50,Talla:38,Cintura:30,Cadera:40,Edad:20,Sexo:0",@persona.to_s)
	end
end
