FactoryBot.define do
  factory :team, class: Team do
    name { FFaker::Name.name }
    trainer { build(:trainer) }
  end
end
