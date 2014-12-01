require "./pieces/Piece"

class King < Piece #king is a piece

	def initialize(x, y, team, board) #what the paramters of a king is
		set_id(6); #setting the value as 6
		set_disp("K") #its gonna display as k
		@x = x; #setting its x coordinate
		@y = y; #setting its y coordinate
		@is_team_red = team;
		@board = board; #passing the Board.rb instance
	end

	def add(a, b)
  		return a + b;
	end

end
