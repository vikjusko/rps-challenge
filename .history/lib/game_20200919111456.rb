require 'player'
require 'comp'

class Game 
	WIN = { 'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock' }

	def initialize(player)
		@player = player
		@comp = ['rock', 'paper', 'scissors']
	end 

	def result(player, comp)
		if player.move == comp.move
			"Draw"
		elsif WIN[player1.move] == comp.move
			"#{player} you won!"
		else
			"Computer won!"
		end 
	end 

	def self.create(player,comp)
		@game = Game.new(player,comp)
	end 
	
	def self.instance
		@game
	end 
end 