class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, class_name: 'Comment', foreign_key: :post_id
  has_many :likes

  validates :title, presence: true
  validates :title, length: { maximum: 250 }
  validates :comments_counter, comparison: { greater_than_or_equal_to: 0 }
  validates :likes_counter, comparison: { greater_than_or_equal_to: 0 }
  def update_posts_counter
    # A method that updates the posts counter for a user.
    user.update(posts_counter: user.posts.count)
  end

  def five_most_recent_comments
    # A method which returns the 5 most recent comments for a given post.
    comments.order(created_at: :desc).limit(5)
  end
end
