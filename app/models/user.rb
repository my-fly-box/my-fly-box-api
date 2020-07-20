class User < ApplicationRecord
  # has_many :flies

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true, presence: true
end
