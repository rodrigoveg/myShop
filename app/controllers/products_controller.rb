class ProductsController < ApplicationController
  # GET
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price = params[:product][:price]
    if @product.save
      # redirect_to action: :index
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price = params[:product][:price]
    if @product.save
      redirect_to products_path
    else
      render :edit
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
