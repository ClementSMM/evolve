class ReviewsController < ApplicationController
  def new
    @program = Program.find(params[:program_id])
    @reviews = Review.new
  end

  def create
    @reviews = Review.new(reviews_params)
    @reviews.program_id = params[:program_id]
    @reviews.user = current_user
    if @reviews.save
      redirect_to(program_path(params[:program_id]))
    else
      render :new
    end
  end

  def reviews_params
    params.require(:review).permit(:content, :rating)
  end
end
