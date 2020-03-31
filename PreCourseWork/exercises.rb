# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
(1..10).to_a.each {|num| p num}

# Same as above, but only print out values greater than 5.
(1..10).to_a.each do |num|
  if num >= 5
    p num
  end
end

# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
og_arr = (1..10).to_a
test_arr = og_arr.select { |num| num.odd? }

p og_arr
p test_arr

# Append 11 to the end of the original array. Prepend 0 to the beginning.
og_arr.push(11)
og_arr.unshift(0)
p og_arr

# Get rid of 11. And append a 3.
og_arr.pop()
og_arr.push(3)

p og_arr
og_arr.uniq!
p og_arr

# Create a Hash, with one key-value pair, using both Ruby syntax styles.
ex_hash = { key: "value" }
ex_hash_1 = { :key => "value" }

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone_number] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone_number] = contact_data[1][2]
p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone_number]

# Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.downcase.start_with?("s") }

p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |word| 
  word.downcase.start_with?("s", "w") 
end

p arr

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a2 = a.map { |x| x.split(' ')}
p a2.flatten!
p a2

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# It is important to note that method definitions have isolated variable scopes
# You cannot access variables that outside the scope of the method
# However, running methods on objects allows you to access the first outer scope

numbers = (1..100).to_a

flow_control = true
counter = 1

while flow_control
  choice = Random.new()
  i = choice.rand(1..100)
  p numbers[i - 1]
  counter += 1
  flow_control = false if counter > 5
end

count = 1 

until count == 10
  puts count
  count += 1
end

numbers = [7, 9, 13, 25, 18]

counter = 0
p "test"
until counter == numbers.size do
  puts numbers[counter]
  counter += 1
end

for i in 1..100
  puts i if i.odd?
end 

friends = ['Sarah', 'John', 'Hannah', 'Dave']

friends.each { |friend| p "Hello, #{friend}" }

count = 1

numbers = (1..5).to_a
loop do
  p "even: #{numbers[count]}" if numbers[count].even?
  p "odd: #{numbers[count]}" if numbers[count].odd?
  count += 1
  break if count >= 5
end

loop do
  number = rand(100)
  puts number
  break if number <= 10 && number >= 0
  # or break if number.between?(0, 10)
end

process_the_loop = [true, false].sample

loop do
  
end