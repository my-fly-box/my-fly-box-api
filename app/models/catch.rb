class Catch < ApplicationRecord
  belongs_to :fly

  validates :species, presence: true
  validates :image, presence: true
  validates :length, presence: true
  validates :weight, presence: true
  validates :location, presence: true
end
