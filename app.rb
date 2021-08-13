require 'sinatra'


class Battle < Sinatra::Base
enable :sessions #In Sinatra, session is a Hash, and you can set values for its keys. session is most often used to store details of a logged in user.
  get '/' do
    erb :index
  end

  post '/names' do 
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/play'
  end 

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb:play
  end
  
end 