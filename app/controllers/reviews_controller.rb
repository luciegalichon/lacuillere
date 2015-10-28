class ReviewsController < ApplicationController

  before_action :set_restaurant, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    # Review.new(restaurant_id: @restaurant.id, content: params[:review][:content])
    @review = @restaurant.reviews.create(reviews_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end


  private
  def reviews_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
