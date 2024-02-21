class Post < ApplicationRecord
  belongs_to :subreddit
  validates :title, presence: true
  validates :body, presence: true
end
