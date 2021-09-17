FactoryBot.define do
  factory :seller do
    name { Faker::Name.name }
    address { Faker::Address.street_address }
  end
end