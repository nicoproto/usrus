class BookingsController < ApplicationController
  def index
    @bookings = Booking.where("user_id = ?", current_user.id)
    @pending_bookings = Booking.where("status = ? AND user_id = ?", "Pending", current_user.id)
    @accepted_bookings = Booking.where("status = ? AND user_id = ?", "Accepted", current_user.id)
    @rejected_bookings = Booking.where("status = ? AND user_id = ?", "Rejected", current_user.id)
  end

  def show
    @booking = Booking.find(params[:id])
    @item = Item.find(@booking.item_id)

  end

  def edit
    @booking = Booking.find(params[:id])
    @item = Item.find(@booking.item_id)
  end

  def update
    @booking = Booking.find(params[:id])

    @item = Item.find(@booking.item_id)

    start_date = params[:booking]["start_date"]
    end_date = params[:booking]["end_date"]

    rent_days = rent_days(start_date, end_date)

    @booking.total_price = @item.price * rent_days
    @booking.start_date = start_date
    @booking.end_date = end_date
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    Booking.destroy(params[:id])
    redirect_to bookings_path
  end

  def create
    @booking = Booking.new(booking_strong_params)

    @item = Item.find(params[:item_id])
    @booking.item = @item
    @booking.user_id = current_user.id
    @booking.status = "Pending"

    start_date = params[:booking]["start_date"]
    end_date = params[:booking]["end_date"]

    rent_days = rent_days(start_date, end_date)

    @booking.total_price = @item.price * rent_days

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def accept_booking
    @booking = Booking.find(params[:id])
    @booking.status = "Accepted"
    @booking.save
    redirect_to dashboard_path
  end

  def reject_booking
    @booking = Booking.find(params[:id])
    @booking.status = "Rejected"
    @booking.save
    redirect_to dashboard_path
  end


  def booking_strong_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def rent_days(from, to)
    from_date = Date.parse(from)
    to_date = Date.parse(to)
    return to_date.mjd - from_date.mjd
  end
end

