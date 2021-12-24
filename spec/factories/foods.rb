FactoryBot.define do
  factory :food do
    name { 'MyString' }
    measurement_unit { 1 }
    price { 1 }
    user { nil }
  end
end
