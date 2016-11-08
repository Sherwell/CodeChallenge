class ShoppingCartsController < ApplicationController
	before_action :set_shopping_cart

	def show
	end

	def destroy
		@cart.destroy
		redirect_to products_path
	end

	private
		def set_shopping_cart
			@cart = ShoppingCart.find(params[:id])
		end
end
