class Review < ApplicationRecord
  belongs_to :product

  validates :content, :location, presence: true

end
