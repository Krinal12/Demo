class ReviewsController < ApplicationController
  def create
    @customer = Customer.find(params[:customer_id])
    @review = @customer.reviews.create(review_params)
    redirect_to customer_path(@customer)
  end

  def destroy
    @customer = Customer.find(params[:customer_id])
    @review = @customer.reviews.find(params[:id])
    @review.destroy
    redirect_to customer_path(@customer)
  end
  
  private
  def review_params 
    params.require(:review).permit(:title, :body)
  end

end
