FactoryBot.define do
  factory :animal do
    name { 'Pé de Pano' }
    association :owner, factory: :person
    kind { Animal::kinds[:horse] }
    cost { 1_000.0 }

    trait :dog do
      name { 'Rex' }
      association :owner, factory: :person, trait: :axl
      kind { Animal::kinds[:dog] }
      cost { 200.0 }
    end

    trait :cat do
      name { 'Garfield' }
      association :owner, factory: :person
      kind { Animal::kinds[:cat] }
      cost { 300.0 }
    end
  end
end
