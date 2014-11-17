require "./pieces/Piece"

class Pawn < Piece #pawn is a piece

	def initialize(x, y, team) #what the paramters of a pawn are
		set_id(1); #setting the value as 6
		set_disp("p") #its gonna display as k
		@x = x; #setting its x coordinate
		@y = y; #setting its y coordinate
		@is_team_red = team;
	end
	
	def move(x, y)
		@x = x;
		@y = y;
	end

	def add(a, b)
  		return a + b;
	end

end
