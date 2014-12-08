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
		
		if !check_45_degree_move
			return false
		end	
		
		if !check_move
			return false
		end
		
		if !check_enemy(x, y)
			return false
		end	
		
		@x = x;
		@y = y;
	end
	
	def check_move
		
		dist = @xdist.abs;
		
		ydir = 1;
		xdir = 1;
		
		if(@ydist > 0)
			ydir = -1;
		end
		
		if(@xdist > 0)
			xdir = -1
		end
		
		for i in 1..dist-1
			xmove = @x + i*xdir
			ymove = @y + i*ydir

			if(@board.get_piece(xmove, ymove) == -1)
				next
			end	

			puts("Move not possible")
			return false			
			
		end
		
	end
	
	#returns false if ontop of friendly
	def check_enemy(x, y)
		
		if(@board.get_piece(x, y) == -1) 
			return true
		end
		
		if(@board.get_piece(x, y).is_team_red() != @is_team_red)
			#gets the piece located at the coordinate point
			piece = @board.get_piece(x, y);
			
			#print a read out to the user
			puts("#{piece.get_disp()} on the #{@board.get_team(piece.is_team_red)} team at (#{x}, #{y}) has been captured");
			
			#remove the piece at said location
			@board.remove_piece(piece);
			return true
		end
		
		puts("cannot move on top of friendly piece")
		return false
		
	end
	
	def check_45_degree_move
		
		if(@xdist.abs == @ydist.abs)
			return true
		end
		
		puts("cannot move bishop there")
		return false
		
	end
	
	def check_diagonal_move
		if(@xdist.abs > 0 and @ydist.abs > 0) 
			return true
		end
		
		puts("cannot move the bishop non-diagonally")
		return false
	end
	
end
