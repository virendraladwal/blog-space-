FactoryBot.define do
    factory :user do
      name { Faker::Number.number }
    end
  end