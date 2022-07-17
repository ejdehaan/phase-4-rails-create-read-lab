class PlantsController < ApplicationController

    def index
        plant = Plant.all
        render json: plant
    end
   
    def show
        plant = Plant.find(params[:id])
        render json: plant
    end


    def create
        plant = Plant.create!(plants_params)
        puts plant.valid?
        render json: plant, status: :created
    end

    private

    def plants_params
        params.permit(:name, :image, :price)
    end

end
