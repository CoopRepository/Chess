
#imports
require "./Board"; 


class Game
 
	#The board intsance
	@board;
	
	#a boolean that constitues if the game is running
	@running;

	#The constructor to the Game.rb class
	def initialize()
		createBoard();
		
		@running = true;
		
		gameLoop();
	end
	
	#create a new board
	def createBoard()
		@board = Board.new;
	
	end
	
	def gameLoop()
		
		puts("Welcome to ChessAwesomness! v1.0");
		
		while @running do
			
			puts("Enter the x and y coord of the piece you want to move");
			x = gets.chomp().to_i();
			y = gets.chomp().to_i();
			
			if(x > 7 or x < 0 or y > 7 or y < 0)
				puts("Err, selection is out of bounds!");
				next;
			end
			
			piece = @board.get_piece(x, y);
			
			if(piece == -1)
				puts("Cannot select a place with no piece located at it");
				next;
			end
			
			
			puts("You have selected a #{piece.get_disp()} piece on the #{@board.get_team(piece.is_team_red)} team");
			
			
			#placement process
			puts("\nEnter the x and y coord of where you want to move");
			
			x = gets.chomp().to_i();
			y = gets.chomp().to_i();
			
			piece.move(x, y);
			
			@board.print_board();
		
		end
		
	end

end

#Create a new instance of game
game = Game.new;
