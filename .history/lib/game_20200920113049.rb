require './lib/player.rb'
require './lib/comp.rb'

class Game 

	attr_accessor :player, :comp

WIN = { rock: ["lizard", "scissors"],
	paper: ["rock", "spock"],
	scissors: ["paper", "lizard"],
	lizard: ["paper", "spock"],
	spock: ["scissors", "rock"] }

	def initialize(player)
		@player = player
		@comp = Comp.new
	end 

	def self.create(player)
  	@game = Game.new(player)
	end
	
	def self.instance
		@game
	end

	def result(player, comp)
		if player.move == comp.move
			return "It's a draw"
		elsif WIN[(player.move).to_sym].include?(comp.move)
			return "#{player.name} is a winner!!!"
		elsif WIN[(comp.move).to_sym].include?(player.move)
			return "Computer won"
		else
			return "This is not working!"
		end
	end
end 
