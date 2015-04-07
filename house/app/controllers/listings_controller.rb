class ListingsController < ApplicationController
  def new
    render plain: params[:listing].inspect
  end
end
