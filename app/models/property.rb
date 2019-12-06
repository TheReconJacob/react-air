class Property < ApplicationRecord
    has_many :bookings
    belongs_to :user
    has_many :reviews, through: :bookings
    has_one_attached :image
end
