module Api
  class BusinessesController < ApplicationController
    # render json for all businesses with pagination & include pagination metadata
    def index
      @businesses = Business.all.paginate(page: params[:page], per_page: 50).order('id asc')
      render :json => meta(@businesses)
    end

    # render json for a business
    def show
      @business = Business.find(params[:id])
      render json: @business, root: 'data'
    end
  end
end
