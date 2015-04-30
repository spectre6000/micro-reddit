class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  validates(:content, presence: true, length: { minimum: 6 })
  validates(:user_id, presence: true)
  validates(:post_id, presence: true)
end
