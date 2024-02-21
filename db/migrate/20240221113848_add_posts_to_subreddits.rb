class AddPostsToSubreddits < ActiveRecord::Migration[7.1]
  def change
    add_reference :subreddits, :post, foreign_key: true
  end
end
