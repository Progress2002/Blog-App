class Comment < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :post

  def update_counter
    post = Post.find_by(id: post_id)
    post.comments_counter = Comment.where(post_id: post_id).count
    post.save
  end
end
