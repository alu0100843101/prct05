require '~/workspace/prct05/lib/NFrac.rb'
require 'test/unit'

class Tc_NFrac < Test::Unit::TestCase
    
    def setup
        @fraccion1 = NFrac.new(2,4)
        @fraccion2 = NFrac.new(1,5)
        @fraccion3 = NFrac.new(35,6)
        @fraccion4 = NFrac.new(24,32)
        @fraccion5 = NFrac.new(68,13)
        
        @sum = NFrac.new(7,10)
        @rest = NFrac.new(-169,30)
        @mult = NFrac.new(35,8)
        @div = NFrac.new(39,272)
    end
    
    def tear_down
        # nothing
    end
    
    def test_suma
        assert_equal(@sum, @fraccion1 + @fraccion2)
    end
    
    def test_resta
        assert_equal(@rest, @fraccion2 - @fraccion3)
    end
    
    def test_multiplicacion
        assert_equal(@mult, @fraccion3 * @fraccion4)
    end
    
    def test_division
        assert_equal(@div, @fraccion4 / @fraccion5)
    end
    
end