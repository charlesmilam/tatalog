require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:user)).to be_valid
  end
  it "has a valid name" do
    #names cannot be greater than 50 characters
    user = FactoryGirl.build(:user, name: "Susan Oestreicher")
    expect(user.name.length).to be_between(1, 50)
  end
  it "is invalid with a nil name" do
    user = FactoryGirl.build(:user, name: "Alli Kat")
    expect(user.name).not_to be_nil
  end

  it "is invalid with an empty name" do
    user = FactoryGirl.build(:user, name: "Gracie Doodle")
    expect(user.name).not_to be_empty
  end

  xit "has a valid email"
  xit "is invalid without an email"
  xit "has a unique email"
  xit "has a valid password"
  xit "has password and confirmation that matches"
end
