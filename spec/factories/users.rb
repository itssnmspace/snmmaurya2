FactoryGirl.define do
  factory :user do
    email {Faker::Internet.email}
    contact {Faker::Number.number(10).to_s}
    username {Faker::Name.name}
    password {Faker::Config.random}
    user_type
  end
end