#imports
require "./pieces/King";
require "./pieces/Queen";
require "./pieces/Piece";


#The board is responsible for initializing the board

class Board

	
	def initialize()		
		@placement = "23465432 11111111 00000000 00000000 00000000 00000000 11111111 23465432";
		 
		#pieces  
		@king = 6;
		@queen = 5;
		@bishop = 4;
		@knight = 3;
		@rook = 2;
		@pawn = 1;
		
		#board
		@board = [];
		
		interpret_data();
	
	end

	#interpret the placment data, allowing for placement of each piece
	def interpret_data()
		
		var = @placement.split(" ");

		for y in 0..var.length-1
			line = var[y]

			for x in 0..line.length-1
				id = line[x].to_i
				#puts("#{x}, #{y}")
				create_piece(x, y, id);
				
			end
			puts(line)
		end
		
		for y in 0..7
			for x in 0..7
				
				point =  @board[x + y * 8]
				if(point != 0)
					print point.get_disp();
				else
					print "n"
				end
				
			end
			print "\n"
		end
		
	end

	#Create a new piece based of the id provided
	def create_piece(x, y, id)

		case id
		when @king
			@board.push(King.new(x, y));

		when @queen
			@board.push(Queen.new(x, y));
	
		else
				@board.push(0);
		end
		
	end

end
