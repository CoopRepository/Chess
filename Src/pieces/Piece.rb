
#Piece is a abstract class. All Pieces will inheret from this module.
class Piece

	#The id for a piece 
	@id;

	@x;
	@y;
	
	@team;
	
	@display;

	def initialize(x, y, team) #parameters when you create a piece it requires a x, y cooderinate and if it is on the red or blue team
		@x = x;
		@y = y;
		@is_team_red = team;
	end
	
	def move(x, y) #move the piece to a certain location
		
	end
	
	def is_team_red()
		return @is_team_red
	end
	
	def get_disp() #get the display example: n for nothing
		return @display;
	end
	
	def set_disp(disp) #sets the display for the piece
		@display = disp;
	end
	
	def get_x() #get pieces x coordinate and returns it
		return @x;
	end

	def get_y() #get y coordinate
		return @y;
	end
	
	def set_id(id) #setting the id 
		@id = id;
	end

	def get_id() #getting the id of the piece
		return @id;
	end


end
