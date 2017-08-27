ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
# require_relative 'models/link'
# require_relative 'models/tag'
# require_relative 'data_mapper_setup'



class Chitter < Sinatra::Base
  run! if app_file == $0
end
