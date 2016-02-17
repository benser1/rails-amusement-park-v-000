class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
    @user = current_user
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.new(att_params)
    if @attraction.save
      redirect_to attraction_path(@attraction)
    else
      render "new"
    end
  end

  def update 
    @attraction = Attraction.find(params[:id])
    if @attraction.update(att_params)
      redirect_to attraction_path(@attraction)
    else
      render "edit"
    end
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def show
    @attraction = Attraction.find(params[:id])
    @user = current_user
  end

  private

  def att_params
    params.require(:attraction).permit(:name, :tickets, :nausea_rating, :happiness_rating, :min_height)
  end

end ## class end 
