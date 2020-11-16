class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    # you need to give an empty shell to your form_for!
  end

  def create
    @booking = Booking.new(booking_params)
    booking.save
    redirect_to booking_path(@booking)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    booking = Booking.find(params[:id])
    booking.update(booking_params)
    redirect_to booking_path(booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:begin_date, :end_date, :status, :price_to_invoice)
  end
end
