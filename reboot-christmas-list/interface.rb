require_relative 'list'

list = []
gift_list = {}

puts
puts " .                    .           .    "
puts "      .         .                      "
puts "       WELCOME TO XMAS GIFT LIST       "
puts "            .              .       .   "
puts "    .                           .      "
puts "               .   *    .              "
puts "        .         ***       .          "
puts "           .     *****              .  "
puts "    .           *******    .           "
puts "             . *o*******         .     "
puts "__________________|_|__________________"
puts

exit = false
until exit
  puts 'Which action? > list|add|delete|quit'
  print '> '
  action = gets.chomp

  case action
  when 'list'
    display_list(gift_list)
  when 'add'
    puts 'What gift would you like to add to your list?'
    print '> New gift: '
    gift_list[gets.chomp] = false
  when 'delete'
    puts 'Which gift would you like to remove from your list?'
    display_list(gift_list)
    puts 'Enter the gift number:'
    print '> '
    list.delete_at(gets.chomp - 1)
  when 'quit'
    exit = true
  else
    puts 'Invalid command, please choose between list, add, delete or quit'
  end
end
