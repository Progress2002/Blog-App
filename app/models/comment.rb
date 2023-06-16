class Comment < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  belongs_to :post
  after_create :update_comment_counter

  def update_comment_counter
    post.update(comment_counter: post.comments.count)
  end
end
