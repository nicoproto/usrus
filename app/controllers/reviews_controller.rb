class ReviewsController < ApplicationController
  def new
    # we need @item in our `simple_form_for`
    @item = Item.find(params[:item_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `item_id` to associate review with corresponding item
    @item = Item.find(params[:item_id])
    @review.item = @item
    @review.save
    redirect_to item_path(@item)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end
