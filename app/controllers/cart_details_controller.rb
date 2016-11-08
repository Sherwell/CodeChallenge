class CartDetailsController < ApplicationController
	before_action :set_cart, only: [:add_to_cart]
	before_action :set_cart_detail, only: [:destroy]

	def destroy
		cart = @cart_detail.shopping_cart
		@cart_detail.destroy
		redirect_to cart
	end

	def add_to_cart
		# If no cart in session, create one
		if @cart.nil?
			@cart = ShoppingCart.create!
			session[:shopping_cart_id] = @cart.id
		end

		# Add product to Cart
		@cart.cart_details.create(product_id: params[:product_id])

		redirect_to @cart
	end

	private
		def set_cart_detail
			@cart_detail = CartDetail.find(params[:id])
		end
end
