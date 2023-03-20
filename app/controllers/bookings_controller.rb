class BookingsController < ApplicationController

  def index
    @booking = Booking.new
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
  end

  private

  def booking_params
    params.require(:booking).permit(:price, :date, :service)
  end
end
