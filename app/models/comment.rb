class Comment < ActiveRecord::Base
  belongs_to :users
  belongs_to :links
  has_many :votes
end
