class Api::V1::ImagesController < ApplicationController
  def create
    i = Image.new(params[:base_64])
    json_response(ImageSerializer.new(i, options))
  end
end
