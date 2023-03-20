class Client < ApplicationRecord
  has_many :bookings

  validates :name, :email, :phone_number, presence: true
end
