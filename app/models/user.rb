class User < ApplicationRecord
  has_many :posts
  has_many :comments
  has_many :likes

  validates :name, presence: true
  validates :posts_counter, comparison: { greater_than_or_equal_to: 0 }
  def three_most_recent_posts
    # A method that returns the 3 most recent posts for a given user.
    posts.find_by(user_id).limit(3)
  end
end
