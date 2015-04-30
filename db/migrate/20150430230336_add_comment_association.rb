class AddCommentAssociation < ActiveRecord::Migration
  def change
    add_reference :comments, :users, index: true
    add_reference :comments, :posts, index: true
  end
end
