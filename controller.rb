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



# get '/all/:num1/:num2' do
#   content_type(:json)

#   calculator = Calculator.new(params[:num1].to_f,params[:num2].to_f)
#   results = {
#     add: calculator.add.round(2),
#     sub: calculator.subtract.round(2),
#     mult: calculator.multiply.round(2),
#     div: calculator.divide.round(2)
#   }

#   return results.to_json
# end