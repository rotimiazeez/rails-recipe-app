FactoryBot.define do
  factory :food do
    name { 'Name' }
    measurement_unit { 'Unit' }
    price { '5.99' }
    user { nil }
  end
end
