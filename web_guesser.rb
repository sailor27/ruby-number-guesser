require 'sinatra'
require 'sinatra/reloader'

get '/' do

  def print_number
    highest_number = 100
    "The secret number is:  #{rand(highest_number)}"
  end
  print_number()
end
