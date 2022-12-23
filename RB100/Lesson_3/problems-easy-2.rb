# 1.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.has_key?("Jim")
ages.include?("Jim")
ages.key?("Jim")

# 2.
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.swapcase
p munsters_description.capitalize
p munsters_description.downcase
p munsters_description.upcase

# 8.
advice = "Few things in life are as important as house training your pet dinosaur."

advice = advice.slice!(advice.index("house")..advice.length)
p advice

# I really found this excercise to be helpful.
# It demonstrates how using a mutating method such as *slice!* --
# will result in a return value that is different from the mutated state of the caller
