class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post

  def self.update_counter_for_post(post)
    post.update(commentsCounter: Comment.where(post:).count)
  end
end
