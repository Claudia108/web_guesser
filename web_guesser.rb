require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  answer = params["guess"]
  message = check_answer(answer)
  color = colors(answer)
  erb :index, :locals => {:message => message, :color => color}
end

SECRET_NUMBER = rand(100)

def check_answer(answer)
  if answer.to_i > (SECRET_NUMBER + 5)
    "Way too high!"
  elsif answer.to_i < (SECRET_NUMBER - 5)
    "Way too low!"
  elsif answer.to_i > SECRET_NUMBER
    "Too high!"
  elsif answer.to_i < SECRET_NUMBER
    "Too low!"
  else
    "You got it right!\nThe secret number is #{SECRET_NUMBER}"
  end
end

def colors(answer)
  if answer.to_i > (SECRET_NUMBER + 5)
    color = "#a82525"
  elsif answer.to_i < (SECRET_NUMBER - 5)
    color = "#a82525"
  elsif answer.to_i > SECRET_NUMBER
    color = "#e67676"
  elsif answer.to_i < SECRET_NUMBER
    color = "#e67676"
  else
    color = "#43801d"
  end
end
