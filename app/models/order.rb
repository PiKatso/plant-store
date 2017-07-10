class Order < ApplicationRecord
  has_many :products, through: :order_items
  has_many :order_items
  # validates :status, presence: true
  # validates :total, numericality: true, presence: true
end
