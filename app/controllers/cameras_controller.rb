class CamerasController < ApplicationController

  def index
    @cameras = Camera.all
  end

  def new

  end

  def create
    @camera = Camera.new
    @camera.brand = params[:camera][:camera_brand]
    @camera.camera_model = params[:camera][:camera_model]
    @camera.reviews = params[:camera][:camera_review]
    @camera.sample_image = params[:camera][:sample_image]
    @camera.save
    redirect_to '/cameras'
  end

  def show
    @camera = Camera.find(params[:id])
  end

end
