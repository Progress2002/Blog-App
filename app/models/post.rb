class Post < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :comments
  has_many :likes

  validates :title, presence: true, length: { minimum: 3, maximum: 250 }
  validates :comments_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :likes_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }

  def count_updater
    user = User.find_by(id: user_id)
    user.posts_counter = Post.where(user_id: user_id).count
    user.save
  end

  def recent_comments
    Comment.where(post_id: id).order(created_at: :desc).limit(5)
  end
end
