module SessionsHelper
	include CurrentCart

	def cart?
		set_cart
	end
end