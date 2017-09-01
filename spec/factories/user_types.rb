FactoryGirl.define do
  factory :user_type do
    name { Faker::Name.name }
  end
end
