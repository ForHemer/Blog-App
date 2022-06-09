class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  after_initialize :increment_by_one
  after_destroy :decrement_by_one

  def increment_by_one
    post.increment! :CommentsCounter
  end

  def decrement_by_one
    post.decrement! :CommentsCounter
  end
end
