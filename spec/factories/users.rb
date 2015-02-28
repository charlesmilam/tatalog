require "faker"

FactoryGirl.define do
  factory :user do |f|
    f.name {Faker::Name.name}
    f.email {Faker::Internet.email}
    f.password {"abc123"}
    f.password_confirmation {"abc123"}    
  end
end