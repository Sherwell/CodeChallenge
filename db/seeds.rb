# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# If file not on parent directory, adjust path.
file = JSON.parse(File.read('../products.json'))
file["products"].each do |product|
	Product.create!(product)
end