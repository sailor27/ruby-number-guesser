require 'sinatra'
require 'sinatra/reloader'

SECRET_NUMBER = rand(100)

get '/' do
  number = SECRET_NUMBER
  guess = params["guess"]
  message = guess_checker(guess, number)

  def guess_checker(guess, number)
    guess = guess.to_i

    if guess > number
      "#{guess} is Too High"
    elsif guess < number
      "#{guess} is Too Low"
    elsif guess === number
      "Correct.
      The Secret Number is: #{guess}!"
    else
      "#{there was an issue}"
    end

  end


  erb :index, :locals => {
    :number => number,
    :guess => guess,
    :message => message
  }
end
