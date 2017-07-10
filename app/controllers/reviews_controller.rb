class ReviewsController < ApplicationController
  before_action :authenticate_user!, :only => [:new]

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      flash[:notice] = "Review successfully added"
      redirect_to product_path(@product)
    else
      flash[:notice] = "Review creation failed"
      render :new
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])
  end

  def update
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = "Review successfully updated"
      redirect_to product_path(@product)
    else
      flash[:notice] = "Review update failed"
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])
    if @review.destroy
      flash[:notice] = "Review successfully removed"
      redirect_to product_path(@product)
    end
  end

private

  def review_params
    params.require(:review).permit(:content, :location)
  end

end
