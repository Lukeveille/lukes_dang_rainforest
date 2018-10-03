class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
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
      flash[:notice] = "Succesfully Created #{@product.name}!"
      redirect_to products_path
    else
      render new_product_path
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
      flash[:notice] = "Succesfully Updated #{@product.name}!"
      redirect_to products_path
    else
      render new_product_path
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Succesfully Deleted #{@product.name}!"
    redirect_to products_path
  end
end
