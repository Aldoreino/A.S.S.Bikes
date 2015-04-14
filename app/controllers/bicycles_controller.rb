class BicyclesController < ApplicationController
	def edit
		@bicycle = Bicycle.find(params[:id])
	end

	def home
		@bicycles = Bicycle.all
	end

	def show
		@bicycle = Bicycle.find(params[:id])
	end

	def new
		@bicycle = Bicycle.new
	end

	def create

		@bicycle = Bicycle.new(params.require(:bicycle).permit(:price, :style, :color))

		if @bicycle.save
			redirect_to root_url

		end
	end

	def update
		@bicycle = Bicycle.find(params[:id])

		if @bicycle.update_attributes(params.require(:bicycle).permit(:price, :style, :color))
			redirect_to root_url
		else
			render "edit"
		end
	end


	def destroy
		@bicycle = Bicycle.find(params[:id])
		@bicycle.destroy
	redirect_to root_url
	end


end
