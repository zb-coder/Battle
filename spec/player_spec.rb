require_relative '../player.rb'
describe Player do
  
  it 'should return the name of the player' do
  player = Player.new('Zainab')
  expect(player.name).to eq('Zainab')
  end
end