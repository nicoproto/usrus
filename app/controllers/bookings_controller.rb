class BookingsController < ApplicationController
  def index
    @bookings = Booking.where("user_id = ?", current_user.id)
  end

  def show
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
  end

  def destroy
    Booking.destroy(params[:id])
    redirect_to bookings_path
  end
end
