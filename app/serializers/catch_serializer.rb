class CatchSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :species, :location, :length, :weight, :image, :fly_id
end
