class Review < ApplicationRecord
    belongs_to :user
    belongs_to :booking
    has_one :property, through: :bookings
    has_many :users, through: :bookings
end
