require 'faker'

Article.seed(:author_id, :title,
  {author_id: Author.find_by_name!('Erich Gamma').id, title: 'Design Patterns', summary: Faker::Lorem.sentence, body: Faker::Lorem.paragraph },
  {author_id: Author.find_by_name!('Erich Gamma').id, title: 'JUnit testing', summary: Faker::Lorem.sentence, body: Faker::Lorem.paragraph },
  {author_id: Author.find_by_name!('Steve McConnell').id, title: 'Code Complete', summary: Faker::Lorem.sentence, body: Faker::Lorem.paragraph },
  {author_id: Author.find_by_name!('Steve McConnell').id, title: 'Code Complete 2', summary: Faker::Lorem.sentence, body: Faker::Lorem.paragraph }
)
