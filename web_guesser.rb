require 'sinatra'
require 'sinatra/reloader'

get '/' do
  x = Random.rand(1..4)
  "The secret number is #{x}"
end
