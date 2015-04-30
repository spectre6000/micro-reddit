require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(username: "example1")
  end

  test "should be valid" do 
    assert @user.valid?
  end

  test "name should be present" do 
    @user.username = ""
    assert_not @user.valid?
  end

  test "name should be more than 6 characters long" do 
    @user.username = "a" * 5
    assert_not @user.valid?
  end
end
