class ListingsController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
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
    @listing = Listing.find(params[:id])
  end
  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy

    redirect_to listings_path
  end
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

    if @listing.update(listing_params)
      redirect_to @listing
    else
      render 'edit'
    end
  end
  private
  def listing_params
    params.require(:listing).permit(:address,:price,:description,:time_stamp)
  end
end
