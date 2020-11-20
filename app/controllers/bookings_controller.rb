class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @tool = Tool.find(params[:tool_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @tool = Tool.find(params[:tool_id])
    @booking.tool = @tool
    @booking.user = current_user
    @booking.price_to_invoice = (@booking.end_date - @booking.begin_date).to_i / 1.day * @tool.daily_price

    if @booking.save
     redirect_to profile_path, notice: 'Votre demande de réservation est envoyée au propriétaire et en attente de confirmation'
     else
     render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    booking = Booking.find(params[:id])
    booking.update(booking_params)
    redirect_to booking_path(booking)
  end

  def confirm
    booking = Booking.find(params[:id])
    booking.status = "confirmed"
    booking.save
    redirect_to profile_path, notice: 'Vous avez confirmé ce booking'
  end

  def refuse
    booking = Booking.find(params[:id])
    booking.status = "declined"
    booking.save
    redirect_to profile_path, notice: 'Vous avez refusé ce booking'
  end

  private

  def booking_params
    params.require(:booking).permit(:begin_date, :end_date, :status, :price_to_invoice, :photo)
  end
end
