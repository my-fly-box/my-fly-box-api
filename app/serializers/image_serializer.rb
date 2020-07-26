class ImageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :species, :prob
end
