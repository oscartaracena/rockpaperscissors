# rsp.rb
require 'sinatra'
@input
comp_guess = ["rock","scissors","paper"]
@guess = comp_guess.shuffle[0]


get '/' do
erb :home
end

get 'game_play'do
if @input == "rock" && @guess == "paper"
	return "correct"

elsif  @guess == "rock" &&  @input == "paper"
	#puts "Player Wins - Paper covers Rock"
	return "correct"

elsif  @guess == "paper" && @input == "scissors"
	#puts "Player Wins -Scissor cuts paper"
	return "correct"

elsif  @guess == "scissors" && @input == "paper"
	#puts "Computer Wins - Scissor cuts paper"
	return "correct"

elsif  @guess == "scissors" && @input == "rock"
	#puts "Player Wins - Rock smashes Scissor."
	return "correct"

elsif  @guess == "rock" && @input == "scissors"
	#puts "Computer Wins - Rock smashes Scissor"
	return "correct"

elsif  @guess == "scissors" && @input == "scissors"
	return "tie game - scissors"

elsif  @guess == "paper" && @input == "paper"
	return "tie game - paper"

elsif  @guess == "rock" && @input == "rock"
	return "tie game -rock"

else
end


erb :rotate
end

post '/game_play' do
  input = params[:input]
	guess = params[:guess]
	erb :rotate
	end
