class OrderItemsController < ApplicationController

  def create
    @account = Account.where(user_id: current_user.id)[0]
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.account_id = @account.id
    if @order.save
      flash[:alert] = "Item added to cart"
      session[:order_id] = @order.id
      redirect_to products_path
    else
      flash[:notice] = "Error adding item to cart"
      redirect_to products_path
    end
  end

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

end
