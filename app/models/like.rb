class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def update_likes_counter
    # A method that updates the likes counter for a post.
  end
end
