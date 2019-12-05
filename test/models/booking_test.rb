require 'test_helper'

class BookingTest < ActiveSupport::TestCase
    test "bookings can have customers" do
      booking = Booking.all.first
      assert_equal(booking.user_id, 3) 
    end
end
