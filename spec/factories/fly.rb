FactoryBot.define do
  factory :fly, class: Fly do
    name { Faker::GreekPhilosophers.name }
    size { Faker::Number.within(range: 1..20) }
    color { Faker::Color.color_name }
    amount { Faker::Number.within(range: 1..10) }
    category { Faker::Kpop.boy_bands }
    created_at { Faker::Time.backward(days: 10, period: :morning) }
    updated_at { Faker::Time.backward(days: 10, period: :morning) }
    # association :user, factory: :user
  end
end
