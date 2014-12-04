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
		
		
		
	end
	

	
end