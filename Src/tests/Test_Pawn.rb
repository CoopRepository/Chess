require "minitest/autorun" #require the testing class
require_relative "../Board"

class Test_Pawn < Minitest::Test
	
	def setup
		@board = Board.new
		
		#coordinate point for a red pawn
		@rt_x = 0;
		@rt_y = 1;
		
		#coordinate point for a blue pawn
		@bt_x = 0;
		@bt_y = 6;
	end
	
	#tests correct movement for a pawn on the red team
	def test_correct_movement_team_red
		
		#get a pawn the specified x y coordinate
		pawn = @board.get_piece(@rt_x, @rt_y);
		result = pawn.move(0, 2);
		assert result;	
		
	end
	
	#tests correct movement for a pawn on the blue team
	def test_correct_movement_team_blue
	
		pawn = @board.get_piece(@bt_x, @bt_y)
		result = pawn.move(0, 5)
		assert result
		
	end
	
	def test_incorrect_direction_team_red
		
		pawn = @board.get_piece(@rt_x, @rt_y)
		result = pawn.move(0, 0)
		assert !result
		
	end
	
	def test_incorrect_direction_team_blue
		pawn = @board.get_piece(@bt_x, @bt_y)
		assert !pawn.move(0, 7)
	end
	
	def test_distance_check
		
		pawn = @board.get_piece(@rt_x, @rt_y)
		assert !pawn.move(0, 5)
		
	end
	
	def test_friendly_check_team_red
		pawn = @board.get_piece(@rt_x, @rt_y)
		assert !pawn.move(1, 1)
	end
	
	def test_friendly_check_team_blue
		
		pawn = @board.get_piece(@bt_x,@bt_y)
		assert !pawn.move(1, 6)
	end
	
	def test_linear_move_team_red
	
		pawn = @board.get_piece(@rt_x, @rt_y)
		
		pawn_enemy = @board.get_piece(@bt_x, @bt_y);
		pawn_enemy.move(0, 5)
		pawn_enemy.move(0, 4)
		pawn_enemy.move(0, 3)
		pawn_enemy.move(0, 2)
		
		assert !pawn.move(0, 2)
		
	end
	
	def test_horizontal_move_team_red
		
		pawn = @board.get_piece(@rt_x, @rt_y)
		pawn.move(0, 2)
		assert !pawn.move(1, 2)
	end
	
	def test_diagonal_move
		
		pawn = @board.get_piece(@rt_x, @rt_y)
		assert !pawn.move(1, 2)
	end
	
	def test_linear_move_team_blue
		
		pawn = @board.get_piece(@bt_x, @bt_y)
		pawn_enemy = @board.get_piece(@rt_x,@rt_y)
		pawn_enemy.move(0,2)
		pawn_enemy.move(0,3)
		pawn_enemy.move(0,4)
		pawn_enemy.move(0,5)
		
		assert !pawn.move(0,5)
	end
	
	def test_horizontal_move_team_blue
	
		pawn = @board.get_piece(@bt_x,@bt_y)
		pawn.move(0,5)
		result = pawn.move(1, 5)
		assert_equal false, result
	end
	
	def test_capture_team_red
		
		pawn = @board.get_piece(@rt_x, @rt_y)
		pawn_enemy = @board.get_piece(1, @bt_y)
		
		pawn_enemy.move(1, 5)
		pawn_enemy.move(1, 4)
		pawn_enemy.move(1, 3)
		pawn_enemy.move(1, 2)
		
		assert pawn.move(1, 2)
		
	end
	
	def test_capture_team_blue
		
		pawn = @board.get_piece(@bt_x, @bt_y)
		pawn_enemy = @board.get_piece(1, @rt_y)
		
		pawn_enemy.move(1, 2)
		pawn_enemy.move(1, 3)
		pawn_enemy.move(1, 4)
		pawn_enemy.move(1, 5)
		
		assert pawn.move(1, 5)
		
	end
end


