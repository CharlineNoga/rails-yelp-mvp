# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
les_amis = { name: 'Les amis', address: 'Paris, France', phone_number: '013464772', category: 'french' }
mai_tai = { name: 'Mai Tai', address: 'Munich, Germany', phone_number: '08975485524', category: 'chinese' }
bella_ciao = { name: 'Bella Ciao', address: 'Munich, Germany', phone_number: '08912436657', category: 'italian' }
sudo_kan = { name: 'Sudo Kan', address: 'Paris, France', phone_number: '0147552614', category: 'japanese' }
anvers_toi = { name: 'Anvers toi', address: 'Paris, France', phone_number: '0144586312', category: 'belgian' }


[ les_amis, mai_tai, bella_ciao, sudo_kan, anvers_toi ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished with #{Restaurant.last.name}!"
