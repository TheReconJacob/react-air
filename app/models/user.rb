class User < ApplicationRecord
    has_secure_password
    has_many :properties
    has_many :bookings
    has_many :reviews, through: :bookings
end
