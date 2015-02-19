require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without a name" do
    user = User.new
    assert_not user.save, "Saved the user without a name"
  end

  test "should not save user without an email address" do
    user = User.new
    user.name = "test1"
    assert_not user.save, "Saved the user without an email address"
  end

  test "should not save user without a password" do
    user = User.new
    user.name = "test1"
    user.email = "test1@example.com"
    assert_not user.save, "Saved the user without a password"
  end

  test "should save a user" do
    user = User.new
    user.name = "test#{rand 100..200}"
    user.email = "#{user.name}@example.com"
    user.password = "abc123"
    user.password_confirmation = "abc123"
    assert user.save, "User was not saved"
  end
end
