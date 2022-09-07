class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def update_comments_counter
    # A method that updates the comments counter for a post.
  end
end
