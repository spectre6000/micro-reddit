class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates(:user_id, presence: true)
  validates(:content, presence: true, length: { minimum: 6 })
  validates(:user_id, presence: true)
end
