class CartDetail < ActiveRecord::Base
  belongs_to :product
  belongs_to :shopping_cart
end
