
require 'sinatra/base'
require './lib/player.rb'
class RPS < Sinatra::Base
	enable :sessions

  get '/' do
    erb :index
	end
	
	post '/name' do
		$player = Player.new(params[:player_name])
		redirect '/play'
	end 

	get '/play' do
		@player_name = $player.name 
		erb :play
	end

	post 'play' do
		sessions[:plalyer_move] = params[:move]
		erb :result
	end 

	run! if app_file == $0
end 
