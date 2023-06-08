class Like < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :post

  def udate_counter
    post = Post.find_by(id: post_id)
    post.likes_counter = Like.where(post_id: post_id).count
  end
end
