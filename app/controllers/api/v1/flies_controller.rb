class Api::V1::FliesController < ApplicationController
  def index
    json_response(serializer(Fly.all))
  end

  def show
    json_response(FlySerializer.new(Fly.find(params[:id]), options))
  end

  def create
    new_fly = Fly.create!(fly_params)
    json_response(FlySerializer.new(new_fly, options))
  end

  def update
    render json: FlySerializer.new(Fly.update(params[:id], fly_params), options)
  end

  def destroy
    destroyed_fly = Fly.find(params[:id])
    Fly.delete(params[:id])
    json_response(FlySerializer.new(destroyed_fly, options))
  end

  private

  def fly_params
    params.permit(:name, :size, :color, :category, :amount, :favorited?)
  end

  def serializer(object)
    FlySerializer.new(object)
  end
end
