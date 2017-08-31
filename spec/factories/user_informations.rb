FactoryGirl.define do
  factory :user_information do
    name       { Faker::Name.name }
    dob        { Faker::Date.birthday(1, 100) }
    address    { Faker::Address.street_address }
    landmark   { Faker::Address.street_name }
    city       { Faker::Address.city }
    pin_code   { Faker::Address.zip_code }
    country    { Faker::Address.country }
    user
  end
end