require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name], params[:player_1_HP])
    $player_2 = Player.new(params[:player_2_name], params[:player_2_HP])
    redirect '/play'
    end

    get '/play' do
      @player_1_name = $player_1.name
      @player_2_name = $player_2.name
      @player_1_HP = $player_1.hitpoints
      @player_2_HP = $player_2.hitpoints
      erb :play
    end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1.attack(@player_2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
