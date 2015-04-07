class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end
  def show
    @listing = Listing.find(params[:id])
  end
  def new
    @listing = Listing.new
  end
  def edit
    @listing = List.find(params[:id])
  end  s
  def create
    @listing = Listing.new(listing_params)

    if @listing.save
    redirect_to @listing
    else
      render 'new'
    end
  end
  def update
    @listing = Listing.find(params[:id])

    if @listing.update(article_params)
      redirect_to @listing
    else
      render 'edit'
    end
  end
  private
  def listing_params
    params.require(:listing).permit(:address,:price,:description)
  end
end
