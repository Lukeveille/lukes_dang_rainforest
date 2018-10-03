class ReviewsController < ApplicationController
  def create
    @review = Review.new

    @review.comment = params[:review][:comment]
    @review.product_id = params[:product_id]

    @review.save

    redirect_to product_url(params[:product_id])
  end

  def edit
    @review = Review.find(params[:id])
    @product = Product.find(params[:product_id])
  end

  def update
    @review = Review.find(params[:id])

    @review.comment = params[:review][:comment]
    

    @review.save

    redirect_to product_url(params[:product_id])

  end

  def destroy
    
  end
end
