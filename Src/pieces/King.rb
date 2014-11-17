require "./pieces/Piece"

class King < Piece

	def initialize(x, y)
		set_id(6);
		set_disp("k")
		@x = x;
		@y = y;
	end

	def add(a, b)
  		return a + b;
	end

end
