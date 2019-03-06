class Recipe < ApplicationRecord
  has_many :meals, dependent: :destroy
  has_many :ingredients, through: :meals

  validates :name, presence: true
  validates :description, presence: true
end
