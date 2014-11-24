require "./pieces/Piece"

class Pawn < Piece #pawn is a piece

	def initialize(x, y, team, board) #what the paramters of a pawn are
		set_id(1); #setting the value as 6
		set_disp("p") #its gonna display as k
		@x = x; #setting its x coordinate
		@y = y; #setting its y coordinate
		@is_team_red = team; #setting the pawn's given team
		@board = board; #passing the instance of Board.rb
		
		@max_move = 1; #the furthest move a pawn can make
	end
	
	def move(x, y)
		
		
		xdist = @x - x;
		ydist = @y - y;
		
		#determine direction of movement is correct(i.e if the pawn on a certain team is moving the correct direction)
		if((@is_team_red == true and ydist < 0) || (@is_team_red == false and ydist > 0))
			puts("cannot move pawn backwards");
			return false;
		end			
		
		if(ydist.abs > 1 || xdist.abs > 1) #checks if the distance the pawn has moved more than one space
			puts("cannot move a pawn more than one space");
			return false;
		end
		
		#begin:rescue block employed to handle null spaces in the board
		begin
			if(@board.get_piece(x, y).is_team_red() == @is_team_red) #checks if their is a freindly piece at coordinate space
				puts("cannot move a pawn ontop of a freindly piece");
				return false;
			end
		
		rescue
		end
		
		
		if(xdist == 0 and ydist.abs == 1) #if the movement of the pawn is linear
				
			if(@board.get_piece(x, y) != -1) #coordinate point has any piece located at it
				puts("cannot move a pawn linearly ontop of another piece");
				return false;
			end
			
		end
		
		if(xdist.abs == 1 and ydist == 0) #checks if the pawn was moved horizontally
			puts("cannot move pawn horizontally");
			return false;
		end
		
		if(xdist.abs == 1 and ydist.abs == 1) #checks if the pawn has moved diagonally
		
			#tests if the piece at the coordinate point is null
			if(@board.get_piece(x, y) == -1)
				puts("cannot move pawn diagonally");
				return false;	
			end
			
			#IF A CAPTURE HAS OCCURED:
			
			#gets the piece located at the coordinate point
			piece = @board.get_piece(x, y);
			
			#print a read out to the user
			puts("#{piece.get_disp()} on the #{@board.get_team(piece.is_team_red)} team at (#{x}, #{y}) has been captured");
			
			#remove the piece at said location
			@board.remove_piece(piece);
			
		end
		
		#if the movement passes all checks, set the coordinate of this piece to the desired point
		@x = x;
		@y = y;
		
		return true;
	end

	def add(a, b)
  		return a + b;
	end

end
