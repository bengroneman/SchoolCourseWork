# Exercies

puts "What is your first name?"
first = gets.chomp.to_s
puts "What is your last name?"
last = gets.chomp.to_s

full_name = "#{first} #{last}" 

10.times do
  puts "Your Name: #{full_name}"
end

puts "How old are you?"
age = gets.chop.to_i

4.times do
  age += 10
  puts age
end

