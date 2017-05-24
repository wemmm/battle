require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end

  get '/battle' do
    erb :index

    post '/battle' do
      p params
      @name = params[:name]
      erb :index
    end
    # start the server if ruby file executed directly
    run! if app_file == $0
  end
end
