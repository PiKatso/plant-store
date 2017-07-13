class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  validates :quantity, presence: true, :numericality => { :greater_than_or_equal_to => 1 }

  # def cart_duplicate(order)
  #   order.order_items.any? { |item| item.product_id == self.product.id }
  # end
  #
  # def consolidate_items(order)
  #   item = order.order_items.where(product_id: self.product_id)[0]
  #   new_quantity = self.quantity + item.quantity
  #   item.update(quantity: new_quantity)
  # end

end
