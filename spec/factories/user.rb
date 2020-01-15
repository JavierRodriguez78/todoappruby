FactoryBot.define do
    factory :user do
        name { Faker::Movies::LordOfTheRings.character}
        email { Faker::Internet.email}
        password_digest { 'pass' }
    end
end