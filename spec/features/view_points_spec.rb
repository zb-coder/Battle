feature "view points" do 
  scenario 'show points' do 
    visit('/')
    fill_in :player_1, with: 'Zainab'
    fill_in :player_2, with: 'Graeme'
    click_button 'Submit'

    #save_and_open_page # will save the web page and open the browser to display it

    expect(page).to have_content 'Graeme: HP 10'
  end 
end 