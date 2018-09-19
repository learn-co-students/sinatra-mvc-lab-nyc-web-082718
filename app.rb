require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    phrase = PigLatinizer.new
    @pl_result=phrase.piglatinize(params[:user_phrase])
      erb :results
  end

end
