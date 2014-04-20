class Article < ActiveRecord::Base
  belongs_to :author
  validates_presence_of :summary, :body, :author
end
