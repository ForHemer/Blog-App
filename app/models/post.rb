class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  def self.update_counter_for_user(user)
    user.update(postCounter: Post.where(author: user).count)
  end

  def self.five_most_recent_comments(post)
    Comment.where(post:).order(created_at: :desc).limit(5)
  end
end
