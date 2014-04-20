class Author < ActiveRecord::Base
  has_many :articles, dependent: :destroy
  validate :name, presence: true
end
