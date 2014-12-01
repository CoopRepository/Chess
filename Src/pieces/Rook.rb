require "./pieces/Piece"

class Rook < Piece

	def initialize(x, y, team, board)
	
		set_id(2); #setting the value as 2
		set_disp("r") #its gonna display as k
		@x = x; #setting its x coordinate
		@y = y; #setting its y coordinate
		@is_team_red = team; #setting the pawn's given team
		@board = board; #passing the instance of Board.rb
		
	end
	
	def move(x, y)
	
		xdist = @x - x
		ydist = @y - y
	
		
		if(xdist.abs > 0 and ydist.abs > 0)
			puts("cannot move rook diagonally")
			return false;
		end
		
		dir = -1;
		
		if(xdist < 0 || ydist < 0)
			dir = 1;
		end
		
		#gets the number of spaces moved
		move = [xdist.abs, ydist.abs].max-1
		
		if(xdist.abs > ydist.abs)

			#Horizontal move:
			
			for i in 1..move
				x_cord = @x + i * dir;
				puts x_cord
				if(@board.get_piece(x_cord, @y) != -1)
					puts("cannot move over another piece")
					return false
				end
			end
			
		else
			
			#verticle move
			
			for i in 1..move
				y_cord = @y + i * dir;
				
				if(@board.get_piece(@x, y_cord) != -1)
					puts("cannot move over another piece")
					return false
				end
			end
			
		end
		
		begin
			if(@board.get_piece(x, y).is_team_red() == @is_team_red)
				puts("Cannot move ontop of freindly piece")
				return false
			else
				puts("capture")
			end
		rescue
		end
		
		@x = x;
		@y = y;
		
	end
	
end


