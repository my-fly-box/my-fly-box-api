FactoryBot.define do
  factory :catch, class: Catch do
    species { Faker::Esport.player }
    length { Faker::Number.within(range: 1..20) }
    weight { Faker::Number.within(range: 1..30) }
    location { Faker::Address.city }
    image { Faker::Avatar.image }
    created_at { Faker::Time.backward(days: 10, period: :morning) }
    updated_at { Faker::Time.backward(days: 10, period: :morning) }
    association :fly, factory: :fly
  end
end
