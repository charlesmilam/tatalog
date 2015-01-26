require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without a user_name" do
    user = User.new
    assert_not user.save, "Saved the user without a user_name"
  end

  test "should not save user without an email address" do
    user = User.new
    user.user_name = "test1"
    assert_not user.save, "Saved the user without an email address"
  end

  test "should not save user without a password" do
    user = User.new
    user.user_name = "test1"
    user.email = "test1@example.com"
    assert_not user.save, "Saved the user without a password"
  end
end
