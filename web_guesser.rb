require 'sinatra'
require 'sinatra/reloader'

get '/' do
  answer = params["guess"]
  message = check_answer(answer)
  erb:index, :locals => {:message => message}
end

SECRET_NUMBER = 50

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
    "You got it right!\n\nThe secret number is #{SECRET_NUMBER}"
  end

end
