class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.where("capacity >= ?", params[:guests])
  end

  def show
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
      flash[:success] = "Congratulations!  You're item has been listed."
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
    redirect_to @item_path
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
