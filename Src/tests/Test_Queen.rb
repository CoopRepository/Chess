require "minitest/autorun" #require the testing class
require_relative "../Board"

class Test_Queen < Minitest::Test
	
	def setup
		@board = Board.new
		
		#coordinate point for a red pawn
		@x = 4;
		@y = 0;
	end
	def test_vertically_incorrect_movement_over_piece
		queen = @board.get_piece(@x, @y);
		assert !queen.move(0, 7);
	end
	def test_horizontally_incorrect_movement_over_piece
		queen = @board.get_piece(@x, @y);
		assert !queen.move(2, 0);
	end
	def test_diagonally_incorrect_movement_over_piece 
		queen = @board.get_piece(@x, @y);
		assert !queen.move(2,2);
	end
	def test_vertically_correct_movement
		queen = @board.get_piece(@x, @y);
		pawn = @board.get_piece(4, 1);
		pawn.move(4,2);
		assert queen.move(4,1);
	end
	def test_horzonally_correct_movement
		queen = @board.get_piece(@x, @y)
		pawn = @board.get_piece(3,1)
		king = @board.get_piece(3,0)
		pawn.move(3,2)
		king.move(3,1)
		assert queen.move(3,0)
	end
	def test_diagonally_correct_movement
		queen = @board.get_piece(@x, @y)
		pawn = @board.get_piece(3,1)
		pawn.move(3,2)
		assert queen.move(3,1)	
	end
	def test_capture
		pawn = @board.get_piece(5,1)
		queen = @board.get_piece(@x, @y);
		pawn.move(5,2)
		queen.move(6,2)
		assert queen.move(2,6)
	end
	
end
		
		
	
	
