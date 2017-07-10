class ProductsController < ApplicationController

  def home

  end

  def index

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

private

  def product_params
    params.require(:product).permit(:name, :description, :price, :care, :origin, :species, :type)
  end

end
