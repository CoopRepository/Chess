require "./pieces/Piece"

class Queen < Piece #saying queen is a piece

	def initialize(x, y, team) #what the parameters of the queen is 
		set_id(5); #setting id to 5
		set_disp("q"); #setting display to q
		@x = x; #setting x coordinate
		@y = y; #setting y coordinate
		@is_team_red = team; #setting team
	end

	def add(a, b)
  		return a + b;
	end

end
