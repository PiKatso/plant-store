class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :order_items
  has_many :orders, through: :order_items

  validates :name, :description, :care, :origin, :species, :family, presence: true
  validates :price, numericality: true, presence: true

end
