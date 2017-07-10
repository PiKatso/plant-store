class ProductsController < ApplicationController

  def home

  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @reviews = Review.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added"
      redirect_to products_path
    else
      render :new
      flash[:notice] = "Product creation failed"
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated"
      redirect_to product_path(@product)
    else
      flash[:notice] = "Product update failed"
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "Product successfully removed"
      redirect_to products_path
    end
  end

private

  def product_params
    params.require(:product).permit(:name, :description, :price, :care, :origin, :species, :family)
  end

end
