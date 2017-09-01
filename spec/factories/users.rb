FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    contact {Faker::PhoneNumber.phone_number}
    username {Faker::Name.name}
    password {Faker::Config.random}
  end
end