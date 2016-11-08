namespace :products do 
	task :import => :environment do
		file = JSON.parse(File.read('../products.json'))
		file["products"].each do |product|
			Product.create!(product)
		end
	end
end