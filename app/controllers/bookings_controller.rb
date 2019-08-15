class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_strong_params)

    @item = Item.find(params[:item_id])
    @booking.item = @item
    @booking.user_id = current_user.id
    @booking.status = "Pending"

    start_date = params[:booking]["start_date(1i)"] + "/" + params[:booking]["start_date(2i)"] + "/" + params[:booking]["start_date(3i)"]
    end_date = params[:booking]["end_date(1i)"] + "/" + params[:booking]["end_date(2i)"] + "/" + params[:booking]["end_date(3i)"]

    rent_days = rent_days(start_date, end_date)

    @booking.total_price = @item.price * rent_days

    if @booking.save
      redirect_to item_path(@item)
    else
      render :new
    end
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
