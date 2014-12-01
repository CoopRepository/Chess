require "minitest/autorun" #require the testing class
require_relative "../Board"

class Test_Knight < Minitest::Test
	
	def setup
		@board = Board.new
		
		#coordinate point for a red pawn
		@x = 1;
		@y = 0;
	end

	def test_vertical_incorrect_linear_movement
		Knight = @board.get_piece(@x, @y);
		assert !Knight.move(2, 1);
	end
	
	def test_horzintal_incorrect_linear_movement
		Knight = @board.get_piece(@x, @y);
		assert !Knight.move(0, 3);
	end
	
	def test_incorrect_diagonal_movement
		Knight = @board.get_piece(@x, @y);
		assert !Knight.move(2, 1);
	end
	
	def test_colliding_friendly
		Knight = @board.get_piece(@x, @y);
		assert !Knight.move(3, 1);
	end
	
	def test_correct_movement_nocapture
		Knight = @board.get_piece(@x, @y);
		assert !Knight.move(2, 2);
	end
	def test_correct_movement_capture
		Knight = @board.get_piece(@x, @y);
		Knight.move(2,2)
		Knight.move(3,4)
		assert knight.move(4,6)
	end
	
		
		