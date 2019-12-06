class ReviewsController < ApplicationController
    def new
        @review = Review.new
    end

    def show
        render component: "Review", props: {review: Review.find(params[:id])}
    end

    def create
        booking = Booking.find(params[:booking_id])
        booking.reviews.create
        review  = Review.create(review_params)
        redirect_to property_url(params[:property_id])
    end

    private

    def review_params
        params.require(:review).permit(:rating, :comments)
        
    end
end
