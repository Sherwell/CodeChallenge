class ShoppingCart < ActiveRecord::Base
	has_many :cart_details
  	has_many :products, through: :cart_details

	def cost
	  	price = 0
	  	cart_details.each do |cd|
	  		price += Product.find(cd.product_id).price
	  	end
	  	price
	end
end
