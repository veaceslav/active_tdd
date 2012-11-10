require 'sinatra'
require 'sinatra/activerecord'

configure do
    options = { :adapter => "sqlite3", :database => "dev.db" }
    ActiveRecord::Base.establish_connection(options)
    ActiveRecord::Base.logger = Logger.new(STDERR)
end

class Person < ActiveRecord::Base
   # validates :first_name, :presence => true

end
