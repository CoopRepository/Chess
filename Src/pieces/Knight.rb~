require "./pieces/Piece"

class Knight < Piece

	def initialize(x, y, team, board)
	
		set_id(2); #setting the value as 2
		set_disp("k") #its gonna display as k
		@x = x; #setting its x coordinate
		@y = y; #setting its y coordinate
		@is_team_red = team; #setting the pawn's given team
		@board = board; #passing the instance of Board.rb
		
	end
	
	def move(x, y)
	
		xdist = @x - x
		ydist = @y - y
	
		if(xdist.abs == 0 or ydist.abs == 0)
			puts("cannot move linerly!")
			return false;
		end
		
		if((xdist.abs == 2 and ydist.abs == 1) or (xdist.abs == 1 and ydist.abs == 2))
			
			piece = @board.get_piece(x, y);
	
			#if the cordinate point has nothing there
			if(piece == -1)
				puts("here")
				@x = x;
				@y = y;
				return true;
			end
			
			#check if their is a freindly piece
			if(piece.is_team_red() == @is_team_red)
				puts("Cannot move Knight ontop of a freindly piece!")
				return false;
			else
				
				#capture occured!;
				
				#print a read out to the user
				puts("#{piece.get_disp()} on the #{@board.get_team(piece.is_team_red)} team at (#{x}, #{y}) has been captured");
			 
				#remove the piece at said location
				@board.remove_piece(piece);
				
				@x = x;
				@y = y;
				return true;
			end
			
		end
		
		puts("The knight cannot move there!");
		return false

	end
	
end
