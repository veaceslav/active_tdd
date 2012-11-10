require 'test/unit'
require './tdd.rb'

class TestPersonModel < Test::Unit::TestCase
    def test_that_it_checks_for_presence_of_first_name
    p = Person.new
    p.valid?
    assert(p.errors.messages.has_key?(:first_name),fail_mess = "Doesn't check for attribute first name")
    end

    def test_if_checks_for_presence_of_required_attributre
    p= Person.new
    p.valid?
        [:first_name, :last_name].each do |attr|
        assert(p.errors.messages.has_key?(attr), failure_mess= "Doesn't check for presence of attribute #{attr}")
        end
     end

     def test_if_checks_for_numerically_of_year_of_birth
        p = Person.new :first_name => "John" , :last_name => "Doe", :year_of_birth => "abc"
        p.valid?
        assert(p.errors.messages.has_key?(:year_of_birth), fail_mess = "Doesn't check for numerically year of birth")
     end

end
