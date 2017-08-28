ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require_relative 'models/peep'
# require_relative 'models/tag'
require_relative 'datamapper_setup'

class Chitter < Sinatra::Base

  enable :sessions

  get '/home' do
    @peeps = Peep.all
    erb :'links/index'
  end

  get '/home/new' do
    erb :'links/new'
  end

  post '/links/peeped' do
    p @user = params[:user]
    p @content = params[:content]
    peep = Peep.new(user: @user, content: @content)
    peep.save
    redirect '/home'
  end



  run! if app_file == $0
end
