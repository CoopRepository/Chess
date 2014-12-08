require "minitest/autorun" #require the testing class
require_relative "../Board"

class Test_Bishop < Minitest::Test
	
	def setup
		
		#create new Board.rb instance
		@board = Board.new
		
		#coordinate point for a bishop
		@x = 2
		@y = 0
		
		@bishop = @board.get_piece(@x, @y)
		
	end
	
	def test_incorrect_linear_move
		assert !@bishop.move(2, 1)
	end
	
	def test_incorrect_45_diagonal_move
		assert !@bishop.move(5, 1)
	end
	
	def test_correct_move
		pawn = @board.get_piece(3, 1)
		pawn.move(3, 2)
		assert @bishop.move(4, 2)
	end
	
	def test_incorrect_move_by_intersection
		assert !@bishop.move(4, 2)
	end
	
	def test_capture
		pawn = @board.get_piece(3, 1)
		pawn.move(3, 2)
		@bishop.move(7, 5)
		assert @bishop.move(6, 6)
	end
	
	
end
