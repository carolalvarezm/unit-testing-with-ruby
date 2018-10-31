require 'lib/Medidas'
require 'test/unit'

class TestPoint < Test::Unit::TestCase
	def setup
		@persona=Medidas.new(50,38,30,40,20,0)
	end
end
