FactoryBot.define do
  factory :artist do
    name { Faker::Music.band }
  end
end
