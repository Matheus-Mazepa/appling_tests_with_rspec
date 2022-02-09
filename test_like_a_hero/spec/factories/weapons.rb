FactoryBot.define do
  factory :weapon do
    name { FFaker::Lorem.word }
    description { FFaker::Lorem.sentence }
    power_base { FFaker::Random.rand(100..5000) }
    power_step { FFaker::Random.rand(20..100) }
    level { FFaker::Random.rand(1..99) }
  end
end
