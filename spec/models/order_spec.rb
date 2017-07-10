require 'rails_helper'

describe Order do
  it { should have_many(:products).through(:order_items) }
  it { should have_many :order_items }

  it { should validate_presence_of :status }
  it { should validate_presence_of :total }
  it { should validate_numericality_of :total }
end
