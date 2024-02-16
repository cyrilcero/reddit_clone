class Post < ApplicationRecord
  validate :title, presence: true
  validate :body, presence: true
end
