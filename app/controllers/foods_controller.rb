class FoodsController < ApplicationController
  load_and_authorize_resource
  # before_action :logged_in_user, only: [:create, :destroy]
  before_action :set_food, only: %i[show destroy]

  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    @food = current_user.foods.new food_params

    if @food.save
      flash[:success] = 'Food successfully created!'
      redirect_to foods_url
    else
      render :new
    end
  end

  def destroy
    @food.destroy
    flash[:success] = 'Post deleted'
    redirect_to foods_url
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price)
  end
end
