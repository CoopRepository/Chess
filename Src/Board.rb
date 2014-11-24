#imports
require "./pieces/King"
require "./pieces/Queen"
require "./pieces/Piece";
require "./pieces/Pawn";


#The board is responsible for initializing the board

class Board

	
	def initialize()		
		@placement = "23465432 11111111 00000000 00000000 00000000 00000000 Y11111111 23465432";
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
		
		#teams switch boolean that tells the intepreter the peices following it are on a different team
		@team_red = false;
		
		interpret_data(); #interprets placement data
	
	end

	#interpret the placment data, allowing for placement of each piece
	def interpret_data()
		
		var = @placement.split(" "); #making it so it creates a new element every space

		for y in 0..var.length-1 #looping through the column
			line = var[y]
			
			@xoffset = 0;

			for x in 0..line.length-1 #looping through the row
		
			
				if(line[x] == "Y")
					@team_red = true;
					@xoffset = -1;
					puts @team_red;
					next;
				end
				
				puts(@xoffset);
				puts("#{line[x].to_i}, #{x+=@xoffset}");
				#gets the id at each coordinate
				id = line[x+=@xoffset].to_i
					
				#create a new piece based of the id at that coordinate
				create_piece(x+=@xoffset, y, id);
				
				
			end 
			
			puts(line) #prints 
		end
		
		print_board();
		
	end

	#prints the board to the screen
	def print_board()
		
		#loop through the height of the board
		for y in 0..7
		
			#loop through the width of the board
			for x in 0..7
					
				#get each potential piece at a given coordinate point
				piece = get_piece(x, y);
				
				#if a piece does not exist at the coordinate point, print null (see: get_piece)
				if(piece == -1)
					print "n"
				else
					print piece.get_disp();
				end
					
			end
			print "\n"
		end
		
	end

	#Create a new piece based of the id provided
	def create_piece(x, y, id) 
	
		case id #case when statement to compare the id to each piece
		
		when @king 
		
			#create a new King and add it to the board
			@board.push(King.new(x, y, @team_red, self)); 

		when @queen
			
			#create a new Queen and add it to the board
			@board.push(Queen.new(x, y, @team_red, self));
	
		when @pawn
		
			#create a new Pawn
			@board.push(Pawn.new(x, y, @team_red, self));
		
		else
			
			#if no piece is found, write 0 to the board
			@board.push(-1);
		end
		
	end
	
	def get_piece(x, y)
		for i in 0..@board.length-1
			
			begin
				if(x == @board[i].get_x() and y == @board[i].get_y())
					return @board[i];
				end
			rescue
				
			end
			
		end
		
		return -1;
		
	end
	
	def remove_piece(piece)
		@board.delete(piece);
		
	end
	
	def get_team(team)
		if(team)
			return "blue"
		end
		return "red"
	end
	

end
