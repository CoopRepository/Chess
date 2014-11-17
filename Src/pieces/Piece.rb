
#Piece is a abstract class. All Pieces will inheret from this module.
class Piece

	#The id for a piece 
	@id;

	@x;
	@y;
	
	@display;

	def initialize(x, y)
		@x = x;
		@y = y;
	end
	
	def get_disp()
		return @display;
	end
	
	def set_disp(disp)
		@display = disp;
	end
	
	def get_x()
		return @x;
	end

	def get_y()
		return @y;
	end
	
	def set_id(id)
		@id = id;
	end

	
	def get_id()
		return @id;
	end


end