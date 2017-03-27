require('json')
require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require_relative('./models/rps_game')

get '/' do
  erb(:home)
end

get '/rps/:one/:two' do 
  game = RPS.new(
    params[:one], params[:two]
    )
  @game_result = game.play
  erb(:result)
end