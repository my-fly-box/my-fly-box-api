class Api::V1::ImagesController < ApplicationController
  def create
    json_response(ImageSerializer.new(Image.new(params[:base_64]), options))
  end
end
