require "./pieces/Piece"

class Bishop < Piece #inherits from Piece.rb

	def initialize(x, y, team, board) #parameters for the bishop
		set_id(4); #set the id of the bishop
		set_disp("b") #its gonna display as k
		@x = x; #setting its x coordinate
		@y = y; #setting its y coordinate
		@is_team_red = team; #setting the pawn's given team
		@board = board; #passing the instance of Board.rb
		
		@max_move = 1; #the furthest move a pawn can make
	end
	
	def move(x, y)
		
		@xdist = @x - x;
		@ydist = @y - y;
		
		if !check_diagonal_move 
			return false
		end
		
		@x = x;
		@y = y;
	end
	
	def check_diagonal_move
		if(@xdist.abs > 0 and @ydist.abs > 0) 
			return true
		end
		
		puts("cannot move the bishop non-diagonally")
		return false
	end
	
end
