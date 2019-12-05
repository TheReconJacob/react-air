require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "a user can have a property" do
    user = User.all.first
    assert_equal(user.properties[0].id, 1)

  end
end
