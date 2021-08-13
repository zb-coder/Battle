feature "view points" do 
  scenario 'show points' do 
    sign_in_and_play
    expect(page).to have_content 'Graeme: HP 10'
  end 
end 