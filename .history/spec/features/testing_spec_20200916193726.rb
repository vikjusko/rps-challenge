#feature 'Testing the app' do
#	scenario 'Can run the app and see page content' do
#		visit '/'
#		expect(page).to have_content 'Lets Play!'
#	end 
#end 

feature 'Enters names' do 
	scenario 'submits names' do 
		visit '/'
		fill_in :player1, with: "Ursie"
		fill_in :player2, with: "Tom"
		click_button 'Submit'
		expect(page).to have_content 'Ursie against Tom'
	end 
end 
