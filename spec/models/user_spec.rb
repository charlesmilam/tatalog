require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:user)).to be_valid
  end
  it "should not be valid without a valid name" do
    #names cannot be greater than 50 characters
    user = FactoryGirl.build(:user, name: "Susan Oestreicher" * 4)
    expect(user).not_to be_valid
  end
  it "should not be valid with a nil name" do
    user = FactoryGirl.build(:user, name: nil)
    expect(user).not_to be_valid
  end

  it "should not be valid with an empty name" do
    user = FactoryGirl.build(:user, name: "")
    expect(user).not_to be_valid
  end

  it "authenticated? should return false for user with nil remember digest" do
    user = FactoryGirl.build(:user, remember_digest: nil)
    expect(user.authenticated?("")).to eql(false)
  end

  xit "has a valid email"
  xit "is invalid without an email"
  xit "has a unique email"
  xit "has a valid password"
  xit "has password and confirmation that matches"
end
