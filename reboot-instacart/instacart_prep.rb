# My hash of items and their respective price
store_items = { "milk" => 1000, "bread" => 450, "cheese" => 4000, "eggs" => 300 }
# store_items = {
#   milk: {
#     price: 990,
#     qty: 12
#   },
#   bread: {

#   }
# }



puts "Welcome to the shop!"

# Create an empy cart for the user
shopping_cart = []
shopping_cart_hash = {}

# List the available items
puts "Today's available items:"
store_items.each do |item, price|
  puts "#{item}, #{price}€"
end



# Add things to the cart array until user wants to checkout
new_item = nil
until new_item == ""
  puts ""
  puts "What do you want to buy? enter checkout to exit..."
  new_item = gets.chomp

  break if new_item == ""

  if store_items.key?(new_item)
    puts "How many?"
    qty = gets.chomp.to_i
    # shopping_cart << new_item
    # puts "You have #{shopping_cart.join(', ')} in your cart"
    shopping_cart_hash[new_item] = (shopping_cart_hash[new_item] || 0) + qty
  else
    puts "Item not available"
  end
end

# Easy list of items in the cart using the join method
# puts "You have #{shopping_cart.join(', ')} in your cart"
# puts "You have #{ shopping_cart_hash.map { |item, qty| "#{qty} x #{item}" }.join(", ")} in your cart."

# Calculating the price of the items in the cart
total_price = 0

puts '|' + '=' * 38 + '|'
puts '|' + ' ' * 38 + '|'
puts "| Thank you for shopping at Maruetsu".ljust(39) + "|"
puts '|' + ' ' * 38 + '|'
puts '|' + '-' * 38 + '|'
puts '|' + ' ' * 38 + '|'
shopping_cart_hash.each do |item, qty|
  total_price += store_items[item] * qty
  puts "| #{item}".ljust(10) + "#{qty} x ¥#{store_items[item]} = ¥#{qty * store_items[item]} |".rjust(30)
end

# Displaying the total price to pay for the items in the cart
puts "| You need to pay:".ljust(20) + "¥#{total_price} |".rjust(20)
puts '|' + '=' * 38 + '|'
