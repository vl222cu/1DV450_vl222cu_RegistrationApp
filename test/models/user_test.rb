require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "Should not save without a username" do
    u = User.new
    u.email = "correct@email.com"
    u.userpassword = "lammet"
    assert_not u.save
  end
end
