module CurrentCart
	extend ActiveSupport::Concern

	private 

		def set_cart
			@cart = ShoppingCart.find(session[:shopping_cart_id])
			rescue ActiveRecord::RecordNotFound
		end
end