require('json')
require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require_relative('./models/rps_game')

get '/' do
  erb(:home)
end