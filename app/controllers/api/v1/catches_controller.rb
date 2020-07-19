class Api::V1::CatchesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render json: CatchSerializer.new(Catch.all)
  end

  def create
    render json: CatchSerializer.new(Catch.create(catch_params))
  end

  def update
    render json: CatchSerializer.new(Catch.update(params[:id], catch_params))
  end

  def destroy
    destroyed_catch = Catch.find(params[:id])
    Catch.delete(params[:id])
    render json: CatchSerializer.new(destroyed_catch)
  end

  private

  def catch_params
    params.permit(:species, :location, :weight, :length, :image, :fly_id)
  end

  # def options
  #   options = {}
  #   options[:is_collection] = false
  #   return options
  # end
end
