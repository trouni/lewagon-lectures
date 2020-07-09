def display_list(list)
  puts "Here is your gift list:"
  list.each_with_index { |(gift, checked), index| puts "#{index + 1} | [#{'X' if checked}] #{gift}" }
end
