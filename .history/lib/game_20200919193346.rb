require './lib/player.rb'
require './lib/comp.rb'

class Game 

	attr_accessor :player, :comp

WIN = { 
	'rock' => %w[lizard scissors],
	'paper' => %w[rock spock],
	'scissors' => %w[ lizard paper],
	'lizard' => %w[ paper spock],
	'spock' => %w[scissors rock]
	}

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

		def result
			if WIN[@player.move].include?(@comp.move)
				return "#{@player.name} is a winner!!!"
			elsif WIN[@comp.move].include?(@player.move)
				return "Computer won!"
			elsif 
				return "It's a draw"
			end 
		end
	end 
