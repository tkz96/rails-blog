class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  def update_posts_counter
    # A method that updates the posts counter for a user.
    user.update(posts_counter: user.posts.count)
  end

  def five_most_recent_comments
    # A method which returns the 5 most recent comments for a given post.
    comments.find_by(post_id).limit(5)
  end
end
