require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:user)).to be_valid
  end
  xit "has a valid name" do
    #names cannot be greater than 50 characters

  end
  xit "is invalid without a name"
  xit "has a valid email"
  xit "is invalid without an email"
  xit "has a unique email"
  xit "has a valid password"
  xit "has password and confirmation that matches"
end
