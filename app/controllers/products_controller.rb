class ProductsController < ApplicationController
  before_action :ensure_logged_in, except: [:show, :index]
  before_action :load_picture, only: [:show, :edit, :update, :destroy]
  before_action :ensure_user_owns_product, only: [:edit, :update, :destroy]

  def load_picture
    @product = Product.find(params[:id])
  end

  def ensure_user_owns_product
    unless current_user == @product.user
      flash[:alert] = "Please log in"
      redirect_to new_session_url
    end
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @reviews = Review.where(product_id: @product.id)
    @review = Review.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price = params[:product][:price]
    @product.user_id = current_user

    if @product.save
      flash[:notice] = "Succesfully Created #{@product.name}!"
      redirect_to products_path
    else
      render new_product_path
    end
  end

  def edit


  end

  def update


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

    @product.destroy
    flash[:notice] = "Succesfully Deleted #{@product.name}!"
    redirect_to products_path
  end

end
