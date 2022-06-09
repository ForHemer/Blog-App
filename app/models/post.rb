class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  after_initialize :increment_by_one
  after_destroy :decrement_by_one

  def increment_by_one
    author.increment! :PostsCounter
  end

  def decrement_by_one
    author.decrement! :PostsCounter
  end

  def recent_comment
    comments.order(created_at: :desc).first(5)
  end
end
