# 1
# Prompt: Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash_flintstones = Hash.new

flintstones.each_with_index do |name, index|
  hash_flintstones[name] = index
end

p hash_flintstones

# 2
# Prompt: Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_ages = 0

ages.each do |name, age|
  total_ages += age
end

p total_ages

# 3
# Prompt in the same age hash, remove people with age 100 or greater

ages.select! do |k, v|
  v < 100
end

p ages
# You could also use #select! here. When using similar methods however, it is important to be aware of the subtle differences in their implementation.
# For example, the Ruby Documentation for Hash#select! tells us that it is "Equivalent to Hash#keep_if, but returns nil if no changes were made",
# though in this case that wouldn't have made any difference.

# 4
# Prompt: Pick out the minimum age from our current Munster family hash:

people = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages = people.values
min = ages.min
p min

# 5
# Prompt: Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, index|
  p index if name.start_with?("Be")
end

# 6
# Prompt: Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0..2]
end

p flintstones

# 7
# Prompt: Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
hash = Hash.new
stripped_statement = statement.split('')
p stripped_statement
stripped_statement.each do |letter|
  if !hash.has_key?(letter)
    hash[letter] = statement.count letter
  end
end

p hash

# 9
# Prompt: write your own version of titleize

def titleize(sentence)
  titleized = sentence.split.map do |word|
    word.capitalize
  end
  return titleized.join(" ")
end

p titleize("jc penney is really cool")

 # 10
 # Prompt:
 # Given the has below
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
 # Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing
 # the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

munsters.each do |name, props|
  case props["age"]
  when 1..17 
    props[:age_group] = "kid"
  when 18..64
    props[:age_group] = "adult"
  when 65..1000 
    props[:age_group] = "senior"
  else
    puts "invalid age #{props[:age]} for #{name}"
  end
end
p munsters
