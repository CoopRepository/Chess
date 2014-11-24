require "minitest/autorun" #require the testing class
require_relative "../Board"

class Test_Pawn < Minitest::Test
	
	#tests correct movement for a pawn on the red team
	def test_correct_movement_team_red
		
		board = Board.new
		
		x = 0
		y = 1
		
		#get a pawn the specified x y coordinate
		pawn = board.get_piece(x, y);
		
		
		result = pawn.move(0, 2);
		
		assert_equal  true, result;	
		
	end
	
	#tests correct movement for a pawn on the blue team
	def test_correct_movement_team_blue
		
		#create a new Board.rb instance
		board = Board.new
		 
		x = 0
		y = 6
		
		pawn = board.get_piece(x, y)
		
		result = pawn.move(0, 5)
		
		assert_equal true, result
		
	end
	
	def test_incorrect_direction_team_red
		
		board = Board.new
		
		x = 0
		y = 1
		
		pawn = board.get_piece(x, y)
		
		result = pawn.move(0, 0)
		
		assert_equal false, result	
		
	end
	
	def test_incorrect_direction_team_blue
		
		board = Board.new
		
		x = 0
		y = 6
		
		pawn = board.get_piece(x, y)

		result = pawn.move(0, 7)
		
		assert_equal false, result	
		
	end
	
	def test_distance_check
		
		board = Board.new
		
		x = 0
		y = 1
		
		pawn = board.get_piece(x, y)
		
		result  = pawn.move(0, 5)
		
		assert_equal false, result
		
	end
	
	def test_friendly_check_team_red
		
		board = Board.new
		
		x = 0;
		y = 1;
		
		pawn = board.get_piece(x, y)
		
		result = pawn.move(1, 1)
		
		assert_equal false, result
		
	end
	
	def test_friendly_check_team_blue
		
		board = Board.new
		
		x = 0
		y = 6
		pawn = board.get_piece(x,y)
		result = pawn.move(1, 6)
		assert_equal false, result
		
	end
	
	def test_linear_move_team_blue
	board = Board.new
	x = 0
	y = 6
	pawn = board.get_piece(x,y)
	x = 0
	y = 1
	pawn_enemy = board.get_piece(x,y)
	pawn_enemy.move(0,2)
	pawn_enemy.move(0,3)
	pawn_enemy.move(0,4)
	pawn_enemy.move(0,5)
	
	result = pawn.move(0,5)
	assert_equal false, result
	
	end
	
	def test_horizontal_move_team_blue
	board = Board.new
	x = 0
	y = 6
	pawn = board.get_piece(x,y)

	pawn.move(0,5)
	result = pawn.move(1, 5)
	assert_equal false, result
	end
end


