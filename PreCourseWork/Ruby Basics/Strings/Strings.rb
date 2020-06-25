str = String::new

p str


name = 'Roger'

puts name.downcase() == 'RoGeR'.downcase()
puts name.downcase() == 'DAVE'.downcase()


name = 'Elizabeth'

puts "Hello, #{name}!"

first_name = "Ben"
last_name = "Groneman"
full_name = "#{first_name} #{last_name}"
p full_name

state = 'tExAs'

p state.capitalize()

greeting = 'Hello!'
puts greeting.gsub!('Hello', 'Goodbye')

alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('')


alphabet.each do |l|
  p l
end

words = 'car human elephant airplane'


words.split(' ').each do |w|
  p w
end

colors = 'blue pink yellow orange'

colors.split(' ').each do |c|
  p c == 'yellow'
  p c == 'purple'
end

