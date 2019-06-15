class ReviewsController < ApplicationController
  def create
     @product = Product.find(params[:product_id])
    # c = @product.reviews.create!(allowed_params)

    @review=@product.reviews.new(review_params)
    # @review.product_id=@product.id
    @review.user=current_user

       redirect_to product_path(@product.id)


  end

  def review_params
    params.require(:review).permit(
      :rating,
      :description
    )
  end
end
