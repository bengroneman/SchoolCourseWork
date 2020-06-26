def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among([0, 0, 1, 0, 2, 0])
find_first_nonzero_among([1])

# Simple fix, the issue is we defined one parameter as an array of numbers
# The naming of the function here is helpful in determine the solution
# Simple pass in a list instead of params

# Weather forecast
def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

# A string will be considered truthy because it contains bytes of data
# To fix this we just needed to change them to be truly boolean values

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.chomp

puts "The result is #{multiply_by_five(number.to_i)}!"

# The 'number' is being passed in as a String when it should be an int

# Pets

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog].push('bowser')

p pets 

# Because our value is an array we can simply push our desired value
# Instead we should append it to the value array

# Even Numbers
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  n.even?
end

p even_numbers # expected output: [2, 6, 8]

# Confucius says
def get_quote(person)
  if person == 'Yoda'
    return 'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
quote = get_quote('Confucius')
puts "\"#{quote}\"" 

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player[:class] = input
player = player.merge(character_classes[input.to_sym])

puts 'Your character stats:'
puts player