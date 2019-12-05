require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  test "property should have a user" do
    property = Property.all.first
    assert_equal(property.user.username, "Tommy")
  end
end
