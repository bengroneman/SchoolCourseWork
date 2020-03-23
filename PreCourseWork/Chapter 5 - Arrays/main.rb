arr = [1, 3, 4, 7, 9, 11]
number = 3

if arr.include?(3)
  puts "#{arr}, contains the number: #{number}"
else
  puts "#{number} does not exist in the array: #{arr}"  
end

array = ["Rust", "Ruby", "Python", "SQL", "JavaScript", "CSS"]

puts "The languages that I know are shown below: "

array.each_with_index { |val, index| puts "#{index}. #{val}"}

arr_1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr_2 = arr_1.map { |num| num + 2}

p arr_1
p arr_2
