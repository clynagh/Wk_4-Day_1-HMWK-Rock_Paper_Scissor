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

get '/result' do
  erb(:result)
end

get '/play/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @game_result = game.run
  erb (:result)
end

#
