require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "can't create a user without name" do
    assert_not User.new(firstname: "", lastname: "lastname", email: "bab@bab.bab").valid?
  end

  test "can't create a user with a blank name" do
    assert_not User.new(firstname: "     ", lastname: "lastname", email: "bab@bab.bab").valid?
  end

  test "user email must be unique" do
    User.create(firstname: "firstname1", lastname: "lastname1", email: "bab@bab.bab")
    assert_not User.new(firstname: "firstname2", lastname: "lastname2", email: "bab@bab.bab").valid?
  end

end
