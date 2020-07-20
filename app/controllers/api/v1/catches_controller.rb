class Api::V1::CatchesController < ApplicationController
  def index
    json_response(serializer(Catch.all))
  end

  def show
    json_response(serializer(Catch.find(params[:id])))
  end

  def create
    json_response(serializer(Catch.create!(catch_params)))
  end

  def update
    json_response(serializer(Catch.update(params[:id], catch_params)))
  end

  def destroy
    destroyed_catch = Catch.find(params[:id])
    Catch.delete(params[:id])
    json_response(serializer(destroyed_catch))
  end

  private

  def catch_params
    params.permit(:species, :location, :weight, :length, :image, :fly_id)
  end

  def serializer(object)
    CatchSerializer.new(object)
  end
end
