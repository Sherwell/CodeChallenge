class Product < ActiveRecord::Base
	has_many :cart_details
  	has_many :shopping_carts, through: :cart_details

	validates_uniqueness_of :sku
end
