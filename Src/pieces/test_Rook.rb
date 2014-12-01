require "minitest/autorun" #require the testing class
require_relative "../Board"

class Test_Rook < Minitest::Test
	
	def setup
		@board = Board.new
		
		#coordinate point for a red pawn
		@x = 0;
		@y = 0;
	
	end
	
	def test_vertically_incorrect_movement
		rook = @board.get_piece(@x, @y);
		result = rook.move(0, 2);
		assert_equal  false, result;
	end	
	
	def test_horzintally_incorrect_movement
		rook = @board.get_piece(@x, @y);
		result = rook.move(7, 0);
		assert_equal false, result;
	end
	
	def test_diagonally_incorrect_movement 
		rook = @board.get_piece(@x, @y);
		result = rook.move(1,1);
		assert_equal false, result;
	end

end