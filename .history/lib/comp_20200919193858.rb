class Comp 
attr_accessor :move
	def move
		@move = ['rock', 'paper', 'scissors', 'lizard', 'spock'].sample
	end
end 