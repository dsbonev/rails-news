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
end
