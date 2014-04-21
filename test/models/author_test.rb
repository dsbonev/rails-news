require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  context '#name' do
    should 'be unique (case-incensitive)' do
      author = create :author
      duplicate_author = build :author,
                                name: author.name.swapcase

      assert duplicate_author.invalid?

      assert duplicate_author.errors[:name].present?
    end
  end

  context '#destroy' do
    should 'destroy own articles too' do
      author = create :author_with_articles
      articles = author.articles
      assert articles.present?

      author.destroy

      assert articles.all? &:destroyed?
    end
  end
end
