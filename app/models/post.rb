class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  def update_posts_counter

  end

  def most_recent_comments

  end
end
