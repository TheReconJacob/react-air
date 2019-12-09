class Review < ApplicationRecord
    has_one :property, through: :bookings
    has_many :users, through: :bookings
end
