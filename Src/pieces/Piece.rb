
#Piece is a abstract class. All Pieces will inheret from this module.
class Piece

	#The id for a piece 
	@id;

	@x;
	@y;
	
	@display;

	def initialize(x, y) #parameters when you create a piece it requires a x and a y cooderinate
		@x = x;
		@y = y;
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

	o
	def get_id() #getting the id of the piece
		return @id;
	end


end
