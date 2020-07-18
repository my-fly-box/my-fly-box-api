class Fly < ApplicationRecord
  # belongs_to :user

  validates :name, presence: true
  validates :size, presence: true
  validates :color, presence: true
  validates :category, presence: true
  validates :amount, presence: true
end
