class CatchSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :species, :length, :weight, :image, :fly_id
end
