require "./pieces/Piece.rb"

class Queen < Piece #queen is a piece

	def initialize(x, y, team, board) #what the parameters of the queen is 
		set_id(5); #setting id to 5
		set_disp("q"); #setting display to q
		@x = x; #setting x coordinate
		@y = y; #setting y coordinate
		@is_team_red = team;
		@board = board; 
	end
	
	def move(x, y)
	
		@xdist = @x - x
		@ydist = @y - y
		
		check_move
		
		@x = x
		@y = y
	end

	def check_move
		
		#check horizontal/verticle movement
		if( (@xdist.abs > 0 and @ydist == 0) || (@ydist.abs > 0 and @xdist == 0) )
			puts "here"
		end
		
	end
	

end
