pets = ['cat', 'dog', 'fish', 'lizard']
p "I have a pet #{pets[2]}"


my_pets = pets[2..3]

my_pets.pop
my_pets.push('dog')
p my_pets


['red', 'yellow', 'purple', 'green'].each do |c|
  p "Color: #{c}"
end

numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map do |n|
  n * 2
end

p doubled_numbers

numbers = [5, 9, 21, 26, 39]
odd_numbers = numbers.select do |n|
  return n if n % 3 == 0
end

p numbers

arr = ['Dave', 7, 'Miranda', 3, 'Jason', 11]

arr2 = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

flat_favs = arr2.flatten
p flat_favs
