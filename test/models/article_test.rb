require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  should 'be ordered by :created_at DESC' do
    create_list :article, 3
    articles = Article.all
    assert_equal 3, articles.count

    todays = articles[0].tap { |a| a.update_attributes! created_at: Date.today }
    tomorrows = articles[1].tap { |a| a.update_attributes! created_at: Date.tomorrow }
    yesterdays = articles[2].tap { |a| a.update_attributes! created_at: Date.yesterday }

    assert_equal [tomorrows, todays, yesterdays].map(&:created_at), Article.all.map(&:created_at)
  end
end
