require 'test/unit'
require './tdd.rb'

class TestPersonModel < Test::Unit::TestCase
    def test_that_it_checks_for_presence_of_first_name
    p = Person.new
    p.valid?
    assert(p.errors.messages.has_key?(:first_name),fail_mess = "Doesn't check for attribute first name")
    end

end
