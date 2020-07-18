class Api::V1::FliesController < ApplicationController
  def index
    render json: FlySerializer.new(Fly.all)
  end

  def show
    render json: FlySerializer.new(Fly.find(params[:id]), options)
  end

  def create
    new_fly = Fly.create(fly_params)
    render json: FlySerializer.new(new_fly, options)
  end

  def update
    render json: FlySerializer.new(Fly.update(params[:id], fly_params), options)
  end

  def destroy
    destroyed_fly = Fly.find(params[:id])
    Fly.delete(params[:id])
    render json: FlySerializer.new(destroyed_fly, options)
  end

  private

  def fly_params
    params.require(:fly).permit(:name, :size, :color, :category, :amount, :favorited?)
  end

  def options
    options = {}
    options[:is_collection] = false
    return options
  end
end