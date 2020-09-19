require './lib/player.rb'
require './lib/comp.rb'

class Game 

	attr_accessor :player, :comp_choice

WIN = { 
	'rock' => %w[lizard scissors],
	'paper' => %w[rock spock],
	'scissors' => %w[ lizard paper],
	'lizard' => %w[ paper spock],
	'spock' => %w[scissors rock]
	}

	def initialize(player)
		@player = player
	end 

	def self.create(player)
  	@game = Game.new(player)
	end

		def self.instance
  		@game
		end

		def comp_move
			@move = ['rock', 'paper', 'scissors', 'lizard', 'spock'].sample
		end

		def result(player)
			if @player.move == @comp_move
				return "It's a draw"
			elsif WIN[@player.move].include?(@comp_choice)
				return "#{@player.name} is a winner!!!"
			else
				return "Computer won!"
			end 
		end
	end 
