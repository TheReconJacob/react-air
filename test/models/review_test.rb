require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test "property should have a user" do
    review = Review.all.first
    assert_equal(review.user_id, "3")
  end
end
