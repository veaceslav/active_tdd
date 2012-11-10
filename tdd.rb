require 'sinatra'
require 'sinatra/activerecord'

configure do
    options = { :adapter => "sqlite3", :database => "dev.db" }
    ActiveRecord::Base.establish_connection(options)
   # ActiveRecord::Base.logger = Logger.new(STDERR)
end

class Person < ActiveRecord::Base
    validates :first_name,:last_name,:presence => true
    validates :year_of_birth, :numericality => { :only_integer => true }
    validates :year_of_birth, :numericality => { :grater_than_or_equal_to => 1900 }
    before_save { |person| person.planet_of_birth = "Earth" if person.planet_of_birth.blank? }
end


