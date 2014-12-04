require "minitest/unit"
require "minitest/autorun" #require the testing class
require_relative "../Board"

class Test_Rook < Minitest::Test
	
	def setup
		@board = Board.new
		
		#coordinate point for a red pawn
		@x = 0;
		@y = 0;
	
	end
	
	def test_vertically_incorrect_movement_over_piece
		rook = @board.get_piece(@x, @y);
		assert !rook.move(0, 2);
	end	
	
	def test_horizontally_incorrect_movement_over_piece
		rook = @board.get_piece(@x, @y);
		assert !rook.move(7, 0);
	end
	
	def test_diagonally_incorrect_movement 
		rook = @board.get_piece(@x, @y);
		assert !rook.move(1,1);
	end
	
	def test_horizontally_incorrect_movement_ontop_freindly
		rook = @board.get_piece(@x, @y);
		assert !rook.move(3, 0);
	end
	
	def test_vertically_incorrect_movement_ontop_freindly
		rook = @board.get_piece(@x, @y);
		assert !rook.move(0, 1);
	end
	
	def test_capture
		rook = @board.get_piece(@x, @y);
		
		#move pawns out of way
		pawn = @board.get_piece(0, 1);
		pawn.move(0, 2)
		pawn.move(0, 3) 
		
		rook.move(0, 2)
		rook.move(1, 2)
		assert rook.move(1, 6);
	end

end
