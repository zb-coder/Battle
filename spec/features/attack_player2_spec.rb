feature "button and load to a new page" do 
  scenario 'player 1 attacks player 2' do 
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content 'Graeme has been attacked'
  end 
end 