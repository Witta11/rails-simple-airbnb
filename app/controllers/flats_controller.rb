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
      redirect_to flats_path
    else
      render :new
    end
  end

  private

  def set_params
    params.require(:flat).permit(:name, :address)
  end
end
