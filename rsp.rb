# rsp.rb
require 'sinatra'
guess=comp_guess=["rock","scissors","paper"]


get '/' do
erb :home
end

get '/get_play' do
	erb :rotate
end
# my issue is with my if/else statements, where how do I impliment them?
post '/game_play' do
	guess = comp_guess.shuffle[0]
	input = params[:input]
	#guess = params[:guess]
	erb :rotate, :locals =>{'input'=>input,'guess'=>guess}
end
