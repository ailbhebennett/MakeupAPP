class ReviewsController < ApplicationController
  def index
    @makeups = Makeups.find(params[:movie_id])
    @review = @makeups.review
  end

  def show
    @makeups = Makeups.find(params[:makeups_id])
    @review = @makeups.review.find(params[:id])   

  end

  def new
    @makeups = Makeups.find(params[makeups_id])
    @review = @makeups.review.build
  end

  def create
    @makeups = Makeups.find(params[makeups_id])
    @review = @makeups.review.build(params.require(:review).permit(:details))
    if @review.save
      redirect_to makeups_reviews_url(@makeups, @review)
    else
      render :action => "new"
    end
  end

  def edit
    @makeups = Makeups.find(params[:makeups_id])
    @review = @makeups.review.find(params[:id])
  end

  def update
    @makeups = Makeups.find(params[makeups_id])
    @review = Review.find(params[:id])
    if @review.update_attributes(params.require(:review).permit(:details))
      redirect_to makeups_reviews_url(@makeups, @review)
    else
      re :action => "edit"
    end
  end

  def destroy
    @makeups = Makeups.find(params[:makeups_id])
    @review = Review.find(params[:id])
    @review.destroy
    respond_to do |format|
      format.html {redirect_to makeups_reviews_path(@makeups) }
      format.xml {head :ok}
    end 
  end
  
end
