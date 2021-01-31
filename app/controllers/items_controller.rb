class ItemsController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
     current_user.items.create!(item_params)
  end

  private
  def item_params
    params.require(:item).permit(:name, :price)
  end
end
