class Post < ApplicationRecord
  has_many :comments
  has_many :likes
  def update_posts_counter
    # A method that updates the posts counter for a user.
    end
  def recent_comments
    # A method which returns the 5 most recent comments for a given post.
  end
end
