require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :price }
  it { should validate_presence_of :description }
  it { should validate_presence_of :origin }
  it { should validate_presence_of :care }
  it { should validate_presence_of :species }
  it { should validate_presence_of :family }
  it { should validate_numericality_of :price }

  it { should have_many :reviews }
  it { should have_many :order_items }
  it { should have_many(:orders).through(:order_items) }

end
