require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "Should not save without username" do
    u = User.new
    u.email = "correct@email.com"
    assert_not u.save    
  end
  
end
