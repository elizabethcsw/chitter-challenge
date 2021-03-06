require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-timestamps'
require 'json'

# require_relative 'models/tag'
# require_relative 'models/link'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/chitter_#{ENV['RACK_ENV']}")

DataMapper.finalize
DataMapper.auto_upgrade!
