class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(set_params)
    if @flat.save
      redirect_to @flats
    else
      render :new
    end
  end

  private
  def set_params
    params(:flat).require(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
