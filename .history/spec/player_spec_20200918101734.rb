require 'player'

describe Player do 
	it 'has a name' do 
		subject = Player.new("Yas")
		expect(subject.name).to eq "Yas"
	end 

	it "has a difined score as 0" do
		subject = Player.new("Yas")
		expect(subject.score).to eq 0
end 