require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game')
# require('json')

get '/' do
  erb(:home)
end

get '/play' do
  erb(:play)
end

get '/play/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @game_result = game.run
  erb (:result)
end

# get '/play/:hand1/:hand2' do
#   calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
#   @calculation = calculator.add
#   erb(:result)
# end
