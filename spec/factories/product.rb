FactoryBot.define do
  factory :product do
    item { Faker::Name.name }
    price { Faker::Number.between(1, 10) }
    total { Faker::Number.between(1, 10) }
  end
end