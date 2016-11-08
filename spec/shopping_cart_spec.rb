require_relative '../app/models/shopping_cart'

describe ShoppingCart do
	before :each do 
		@sc = ShoppingCart.new
	end

	describe "#cost" do 
		it "sums the total cost of each product" do
			5.times do
				p = Product.new(price: 100)
				@sc.products << p
			end
			expect(@sc.cost).to eq 500
		end
	end

	describe "#new" do 
		it "should have no products when created" do 
			expect(@sc.products.count).to eq 0 
		end
		
		it "should have no cart_details when created" do 
			expect(@sc.cart_details.count).to eq 0 
		end
	end
end