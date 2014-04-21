# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
    summary { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraph }
    author
  end
end
