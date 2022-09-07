class User < ApplicationRecord
  has_many :comments
  has_many :posts
  has_many :likes

  def recent_posts
    # A method that returns the 3 most recent posts for a given user.
  end
end
