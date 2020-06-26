def str_capitalize(s)
  if s.length >= 10
    s.upcase
  else
    s
  end
end

puts "What word do you want to capitalize?"
lower_string = gets.chomp.to_s
puts str_capitalize(lower_string)

def what_number(n)
  answer = case
  when n >= 0 && n <= 50
    puts "#{n} is between 0 and 50"
  when n >= 51 && n <= 100
    puts "#{n} is between 51 and 100"
  when n > 100
    puts "#{n} is over 100"
  else
    "n is unknown"
  end
end

puts "Pick a number.."
a_number = gets.chomp.to_i

what_number(a_number)

