#imports
require "./pieces/King";
require "./pieces/Queen";
require "./pieces/Piece";


#The board is responsible for initializing the board

class Board

	
	def initialize()		
		@placement = "23465432 11111111 00000000 00000000 00000000 00000000 11111111 23465432";
		 #the pieces and there order
		#pieces and there value  
		@king = 6; 
		@queen = 5;
		@bishop = 4;
		@knight = 3;
		@rook = 2;
		@pawn = 1;
		
		#board list
		@board = [];
		
		interpret_data(); #interprets placement data
	
	end

	#interpret the placment data, allowing for placement of each piece
	def interpret_data()
		
		var = @placement.split(" "); #making it so it creates a new element every space

		for y in 0..var.length-1 #looping through the column
			line = var[y]

			for x in 0..line.length-1 #looping through the row

				#gets the id at each coordinate
				id = line[x].to_i
					
				#create a new piece based of the id at that coordinate
				create_piece(x, y, id);
				
			end 
			
			puts(line) #prints 
		end
		
		#Prints the board to console:
		
		for y in 0..7 #repeating 8 times
			for x in 0..7
				
				#gets the id of each point
				point =  @board[x + y * 8]
				
				#if the point is not nothing, print its name
				if(point != 0)
					print point.get_disp();
				else 
					#n is equal to nothing there
					print "n"
				end
				
			end
			print "\n"  #spacing
		end 
		
	end

	#Create a new piece based of the id provided
	def create_piece(x, y, id) 
	
		case id #case when statement to compare the id to each piece
		
		when @king 
		
			#create a new King and add it to the board
			@board.push(King.new(x, y)); 

		when @queen
			
			#create a new Queen and add it to the board
			@board.push(Queen.new(x, y));
	
		else
			
			#if no piece is found, write 0 to the board
			@board.push(0);
		end
		
	end

end
