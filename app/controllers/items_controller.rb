class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:location].present?
      @items = Item.near(params[:location], 100)
    else
      @items = Item.geocoded
    end

    @markers = @items.map do |item|
      {
        lat: item.latitude,
        lng: item.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { item: item })
        # image_url: helpers.asset_url('REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS')
      }
    end
  end

  def filterasc
    @items = Item.order(price: :asc)
    if params[:location].present?
      @items = @items.near(params[:location], 100)
    end

  end

  def filterdsc
    @items = Item.order(price: :desc)
    if params[:location].present?
      @items = @items.near(params[:location], 100)
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = Item.new(item_strong_params)
    @item.user = current_user
    if @item.save
      flash[:notice] = "Congratulations!  You're item has been listed."
      redirect_to item_path(@item)
    else
      flash.now[:error] = "Please try again, some fields are incorrect."
      render :new
    end
  end

  def update
    @item.update(item_strong_params)
    redirect_to item_path(@item)
  end

  def destroy
    @item.destroy
    redirect_to dashboard_path
  end

  private

  def item_strong_params
    # need to check current_user part
    params.require(:item).permit(:address, :capacity, :price, :description, :name, :lat, :lng, :photo)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
