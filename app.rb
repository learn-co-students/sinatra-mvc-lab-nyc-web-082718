require_relative 'config/environment'
require_relative './models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    binding.pry
    @response = PigLatinizer.new(params[:text]).latinizer
    binding.pry
    erb :user_output
  end
end
