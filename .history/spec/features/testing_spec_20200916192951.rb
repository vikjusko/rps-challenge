feature 'Testing the app' do
	scenario 'Can run the app and see page content' do
		visit ('/')
		expect(page).to have_content 'This is working'
	end 
end 