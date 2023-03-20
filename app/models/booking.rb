class Booking < ApplicationRecord
  belongs_to :client

  validates :date, :price, :service, presence: true
end
