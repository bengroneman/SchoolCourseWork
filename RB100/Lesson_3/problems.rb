# 5.
# Programmatically determine if 42 lies between 10 and 100.
num = gets.chomp.to_i
range = (10..100).to_a
found = range.select {|n| n == num}

if !found.empty?
  puts "The number lies between 10 and 100: #{num}"
else
  puts "The number does not lie between 10 and 100: #{num}"
end

#||
(10..100).cover?(42)
# (:)

# 6.
famous_words = "seven years ago..."

puts "Four score and #{famous_words}"

puts "Four score and " << famous_words

# 8.
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements: Barney's name and Barney's number
barney = flintstones.select {|k, v| k == "Barney"}
p barney.to_a.flatten

# Ooo nice, once again a nice and quick one liner!
flintstones.assoc("Barney")

