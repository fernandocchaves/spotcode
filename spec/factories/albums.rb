FactoryBot.define do
  factory :album do
    title { Faker::Music.album }
    date { Date.today }
    artist
    category
  end
end
