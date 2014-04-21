# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :author do
    name { Faker::Name.name }

    factory :author_with_articles do
      ignore do
        article_count 2
      end

      after(:create) do |author, evaluator|
        create_list(:article, evaluator.article_count, author: author)
      end
    end
  end
end
