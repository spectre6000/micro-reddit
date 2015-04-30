require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(user_id: 1, post_id: 1, content: "this is a comment")
  end

  test "should be valid" do 
    assert @comment.valid?
  end

  test "user_id should be present" do 
    @comment.user_id = nil
    assert_not @comment.valid?
  end

  test "post_id should be present" do 
    @comment.post_id = nil
    assert_not @comment.valid?
  end

  test "post should be more than 6 characters long" do 
    @comment.content = "a" * 5
    assert_not @comment.valid?
  end
end
