require 'sinatra'
require_relative './player.rb'

class Battle < Sinatra::Base
enable :sessions #In Sinatra, session is a Hash, and you can set values for its keys. session is most often used to store details of a logged in user.
  get '/' do
    erb :index
  end

  get '/names' do 
    $player_1.name = Player.new(:player_1)
    $player_2.name = Player.new(:player_2)
    redirect '/play'
  end 

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name 
    erb:play
  end

 post '/attack' do
  @player_2 = $player_2.name
    erb:attack
  end
  
end 