class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :description, :care, :origin, :species, :family, presence: true
  validates :price, numericality: true, presence: true

end
