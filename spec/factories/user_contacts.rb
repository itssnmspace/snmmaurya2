FactoryGirl.define do
  factory :user_contact do
    contact {Faker::PhoneNumber.phone_number}
    user
  end
end