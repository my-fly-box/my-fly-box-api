FactoryBot.define do
  factory :fly, class: Fly do
    name {Faker::GreekPhilosophers.name}
    size {10}
    color {Faker::Color.color_name}
    amount {5}
    category {Faker::Kpop.boy_bands}
    created_at { Faker::Time.backward(days: 10, period: :morning) }
    updated_at { Faker::Time.backward(days: 10, period: :morning) }
    # association :user, factory: :user
  end
end
