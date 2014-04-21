class Article < ActiveRecord::Base
  default_scope { order 'created_at DESC' }
  belongs_to :author
  validates_presence_of :title, :summary, :body, :author
end
