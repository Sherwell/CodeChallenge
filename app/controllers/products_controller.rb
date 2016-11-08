class ProductsController < ApplicationController

	def index
		@products = Product.all.paginate(page: params[:page], per_page: 30)
	end

	def show
		@product = Product.find(params[:id])

		respond_to do |format|
			format.js
		end
	end
end
