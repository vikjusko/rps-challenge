
feature "entering names" do
	scenario "submitting a name" do
		sign_in	
		expect(page).to have_content 'Ursie'
	end 

	scenario "Has rps option buttons" do 
		sign_in
		expect(page).should have_button('Rock')
end 

end 