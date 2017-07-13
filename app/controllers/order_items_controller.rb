class OrderItemsController < ApplicationController
  before_action :authenticate_user!, :only => [:create]

  def create
    @account = Account.where(user_id: current_user.id)[0]
    @order = current_order
    @order.account_id = @account.id
    item_id = params[:order_item][:product_id].to_i
    item_quantity = params[:order_item][:quantity].to_i
    if cart_duplicate(current_order, item_id)
      consolidate_items(current_order, item_id, item_quantity)
      @order.save
    else
      @item = @order.order_items.new(item_params)
      @order.save
    end
      flash[:alert] = "Item added to cart"
      session[:order_id] = @order.id
      respond_to do |format|
        format.html { redirect_to products_path }
        format.js
      end
    end

    def edit
      respond_to do |format|
        format.js
        format.html { redirect_to cart_path }
      end
      @order_item = OrderItem.find(params[:id])
    end

    def update
      @order_item = OrderItem.find(params[:id])
      @order_item.update(quantity: params[:order_item][:quantity])
      @order_item.order.save
      redirect_to cart_path
    end

  # def update
  #   @product = Product.find(params[:id])
  #   if @product.update(product_params)
  #     flash[:notice] = "Product successfully updated"
  #     redirect_to product_path(@product)
  #   else
  #     flash[:notice] = "Product update failed"
  #     render :edit
  #   end
  # end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to cart_path
  end

private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end

  def cart_duplicate(order, item_id)
    order.order_items.any? { |item| item.product_id == item_id }
  end

  def consolidate_items(order, item_id, item_quantity)
    item = order.order_items.where(product_id: item_id)[0]
    new_quantity = item_quantity + item.quantity
    item.update(quantity: new_quantity)
  end

end
