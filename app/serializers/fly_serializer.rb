class FlySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :size, :color, :category, :amount
end
