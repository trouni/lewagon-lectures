puts 'Destroying restaurants and reviews...'
Restaurant.destroy_all

puts 'Creating restaurants...'
5.times do
  Restaurant.create!({
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address
  })
end
puts 'Finished!'