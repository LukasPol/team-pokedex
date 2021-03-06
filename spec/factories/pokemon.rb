FactoryBot.define do
  factory :team, class: Team do
    name { 'ditto' }
    sript_url { 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/132.png' }
    type { 'normal' }
    team { build(:team) }
  end
end
