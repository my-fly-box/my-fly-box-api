FactoryBot.define do
  factory :catch, class: Catch do
    species {Faker::Esport.player}
    length {20}
    weight {5}
    location {Faker::Address.city}
    image {"www.imgur.com/fakeimage"}
    created_at { Faker::Time.backward(days: 10, period: :morning) }
    updated_at { Faker::Time.backward(days: 10, period: :morning) }
    association :fly, factory: :fly
  end
end
