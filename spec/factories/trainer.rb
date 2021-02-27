FactoryBot.define do
  factory :trainer, class: Trainer do
    name { FFaker::NameBR.name }
    email { FFaker::Internet.email }
    password { 'changeme' }
    age { 20 }
    gender { FFaker::Gender.binary }
  end
end