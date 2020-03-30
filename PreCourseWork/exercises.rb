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
p contacts