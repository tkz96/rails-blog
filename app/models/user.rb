class User < ApplicationRecord
  has_many :posts
  has_many :likes
  has_many :comments

  def most_recent_posts

  end
end
