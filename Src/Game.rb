
#imports
require "./Board"; 


class Game

	#The board intsance
	@board;

	#The constructor to the Game.rb class
	def initialize()
		createBoard();
	end
	
	#create a new board
	def createBoard()
		@board = Board.new;

	end

end

#Create a new instance of game
game = Game.new;
