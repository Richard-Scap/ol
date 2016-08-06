module Api
	class BusinessesController < ApplicationController
		def index
			@businesses = Business.all.to_json(:root => true)
			render json: @businesses
		end

		def show
			@business = Business.find(params[:id]).to_json(:root => true)
			render json: @business
		end
	end
end