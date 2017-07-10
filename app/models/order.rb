class Order < ApplicationRecord
  before_save :update_total
  before_create :update_status

  has_many :products, through: :order_items
  has_many :order_items
  # validates :status, presence: true
  # validates :total, numericality: true, presence: true

  def calculate_total
    self.order_items.collect { |item| item.product.price * item.quantity }.sum
  end

private

  def update_total
      self.total = calculate_total
  end

  def update_status
    if self.status == nil?
      self.status = "in progress"
    end
  end

end
