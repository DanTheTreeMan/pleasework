# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
CSV.foreach(Rails.root.join("db/seeds_data/trees.csv"), headers: true) do |row|
  Tree.find_or_create_by(name: row[0], description: row[1], height: row[2], width: row[3], price: row[4], image_url: row[5], category_id: row[6])
end

AdminUser.delete_all
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Category.delete_all
shrub = Category.create! :name => 'Shrub'
tree = Category.create! :name => 'Tree'

Content.delete_all
about = Content.create! :area => 'About', :title => 'About Us', :body => 'Trees'
contact = Content.create! :area => 'Contact', :title => 'Contact Us', :body => 'CAN I HAVE YO NUMBER'

OrderStatus.delete_all
OrderStatus.create! id: 1, name: 'In Progress'
OrderStatus.create! id: 2, name: 'Placed'
OrderStatus.create! id: 3, name: 'Shipped'
OrderStatus.create! id: 4, name: 'Cancelled'

Order.delete_all
Order.create! id: 1

Province.delete_all
Pronvice.create! province_code: 'MB', tax_rate: 0.08
Pronvice.create! province_code: 'AB', tax_rate: 0.00
Pronvice.create! province_code: 'BC', tax_rate: 0.07
Pronvice.create! province_code: 'NB', tax_rate: 0.08
Pronvice.create! province_code: 'NL', tax_rate: 0.08
Pronvice.create! province_code: 'NT', tax_rate: 0.00
Pronvice.create! province_code: 'NS', tax_rate: 0.10
Pronvice.create! province_code: 'NU', tax_rate: 0.00
Pronvice.create! province_code: 'ON', tax_rate: 0.08
Pronvice.create! province_code: 'PE', tax_rate: 0.09
Pronvice.create! province_code: 'QC', tax_rate: 0.10
Pronvice.create! province_code: 'SK', tax_rate: 0.05
Pronvice.create! province_code: 'YT', tax_rate: 0.00
