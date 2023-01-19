class CarsController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :set_car, only: [:show, :update, :rent]

  def index
		render json: Car.all
  end

	def show
		render json: @car
	end

	def create
		car = Car.new(car_params)

		if car.save
			render json: car, status: :created
		else 
			render json: car.errors
		end
	end

	def update 
		if @car.update(car_params)
			render json: @car
		else 
			render json: @car.errors, status: :unprocessable_entity
		end
	end

	def rent
		if @car.rent
			render json: @car
		else
			render json: @car.errors, status: :unprocessable_entity
		end
	end

	private

	def car_params
		params.require(:car).permit(:name, :model)
	end

	def set_car
		id = params[:car_id]

		@car = Car.find(id)
	end

end
