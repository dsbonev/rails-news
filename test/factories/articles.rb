# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    title { Faker::Lorem.sentence }
    summary { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraph }
    author
  end
end
