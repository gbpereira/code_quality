FactoryBot.define do
  factory :person do
    name { 'Johnny Cash' }
    document { '555555555' }
    birth { Date.new(1_932, 2, 26) }

    trait :axl do
      name { 'Axl Rose' }
      birth { Date.new(1_962, 2, 6) }
    end
  end
end
