class ShoppingCart < ActiveRecord::Base
	has_many :cart_details
  	has_many :products, through: :cart_details

	def cost
	  	cart_details.inject(0){|sum,cd| sum + cd.product.price}
	end
end
