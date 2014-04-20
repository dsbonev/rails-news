class Article < ActiveRecord::Base
  validates_presence_of :summary, :body
end
