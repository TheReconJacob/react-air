require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test "review should have a user" do
    review = Review.all.first
    assert_equal(review.user.id, 3)
  end
  test "property should have a review" do
    review = Review.all.first
    assert_equal(review.booking.property.id, 1)
  end
end
