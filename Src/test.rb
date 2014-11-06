require "test/unit"

class MyClass
	
	def add(a, b)
		return a + b;
	end
end

class Test_MyClass < Test::Unit::TestCase
	
	def test_add
		test = MyClass.new
		result = test.add(2, 3);
		assert_equal(5, result);
	end	
end

puts "hello world";

g = gets().chomp;
puts g;

class King
	def initialize()
		puts "constructor";
	end
end

p = King.new;
