require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(user_id:1, content:"this is a post")
  end

  test "should be valid" do 
    assert @post.valid?
  end

  test "user_id should be present" do 
    @post.user_id = nil
    assert_not @post.valid?
  end

  test "post should be more than 6 characters long" do 
    @post.content = "a" * 5
    assert_not @post.valid?
  end
end
