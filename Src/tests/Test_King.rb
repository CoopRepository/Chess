require "minitest/autorun";

class MyClass
	
	def add(a, b);
		return a+b;
	end 
end

class Test_My < Minitest::Test
	
	def test_add
		ad = MyClass.new
		result = ad.add(2, 2)
		assert_equal  4, result
	end


end

