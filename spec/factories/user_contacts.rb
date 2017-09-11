FactoryGirl.define do
  factory :user_contact do
    contact {Faker::Number.number(10)}
    user
  end
end