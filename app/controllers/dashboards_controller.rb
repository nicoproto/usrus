class DashboardsController < ApplicationController

  def show
    @items = current_user.items
    @pending_bookings = Booking.where("status = ? AND user_id = ?", "Pending", current_user.id)
    @accepted_bookings = Booking.where("status = ? AND user_id = ?", "Accepted", current_user.id)
    @rejected_bookings = Booking.where("status = ? AND user_id = ?", "Rejected", current_user.id)
  end

  def destroy
    @item.destroy
    redirect_to @items_path
  end

  def edit
    raise
      @item = item.find(params[:id])
  end

  def update
    @item = item.find(params[:id])
  end
end

  # def update
  #   @item.update(item_strong_params)
  #   redirect_to item_path(@item)
  # end

  # def destroy
  #   @item.destroy
  #   redirect_to @item_path
  # end

  # def set_item
  #   @monster = Monster.find(params[:id])
  # end

#Find the list of monsters and show it to the host

#List of monsters that belongs to a host
