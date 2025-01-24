class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @service = Service.find(params[:service_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.service = @service
    if @review.save!
      redirect_to service_path(@service)
    else
      flash[:alert] = "Something went wrong."
      render "services/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
