class Api::V1::ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :update, :destroy]

  # GET /shops
  def index
    @shops = Shop.all

    render json: @shops
  end

  # GET /shops/1
  def show
    render json: @shop
  end

  # POST /shops
  def create
    @shop = Shop.new(shop_params)

    if @shop.save
      render json: @shop, status: :created
    else
      render json: @shop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shops/1
  def update
    if @shop.update(shop_params)
      render json: @shop
    else
      render json: @shop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shops/1
  def destroy
    @shop.destroy
  end

  # CUSTOM METHODS!!

  # Get all the products of this shop
  def products_of_this
    orders_and_products_of_this
  end

  # Get all the orders of this shop
  def orders_of_this
    orders_and_products_of_this
  end

  def orders_and_products_of_this
    @shop = Shop.find(params[:shop_id])
    # puts "--->" + params.inspect

    render json: @shop.orders
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      @shop = Shop.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shop_params
      # puts "--->" + params.inspect
      params.require(:shop).permit(:name)
    end
end