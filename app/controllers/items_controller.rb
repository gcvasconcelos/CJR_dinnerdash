class ItemsController < ApplicationController
  
  def index
    @items = Item.search(params[:search])
    #@items = Item.all
    #@order_item = current_order.order_items.new
  end

  def new
    @item = Item.new
  end

  def create
  	@item = Item.new(item_params)

  	if @item.save
  		redirect_to @item
  	else
  		render 'new'
  	end
  end

  def show
  	@item = Item.find(params[:id])
  end

  def edit
  	@item = Item.find(params[:id])
  end

  def update
  	@item = Item.find(params[:id])
 
  	if @item.update(item_params)
    	redirect_to @item
  	else
    	render 'edit'
  	end
  end

<<<<<<< HEAD
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
 
    redirect_to items_path
=======
  def delete
    @item = Item.find(params[:id])
    @item.destroy
>>>>>>> 376a3057696c115e16b2faf0e4765697f58a8544
  end

  private
  	def item_params
  		params.require(:item).permit(:name, :description, :price)
  	end

end