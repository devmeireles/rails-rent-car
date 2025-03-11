class CarsController < ApplicationController
  before_action :set_car, only: %i[show edit update destroy]
  allow_unauthenticated_access only: %i[ index show ]

  def index
    @cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to @car
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to @car
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path
  end

  private
    def set_car
      @car = Car.find(params[:id])
    end

    def car_params
      params.require(:car).permit(:name, :make, :model, :price, :year, :featured_image, :inventory_count)
    end
end
