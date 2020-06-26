sun = ['visible', 'hidden'].sample

puts "Ah, there is a lot of sun!" if sun == 'visible'

puts "The clouds are blocking the sun!" unless sun == 'visible'


# True or False

boolean = [true, false].sample

boolean ? puts("It is true!") : puts("It is false!")

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts "GOOOOOO"
when 'yellow'
  puts "NEARLY THERE"
else 'red'
  puts "STOOOOPPPPPPP!"
end

if stoplight == 'green'
  puts "GOOOOOO"
elsif stoplight == 'yellow'
  puts " nearly there"
else
  puts "STooooppp!"
end

status = ['awake', 'tired'].sample

alert = if status == 'awake'
  'Be productive'
else
  'Go to sleep'
end
puts alert


number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

puts "Go!" if stoplight == 'green'
puts "Slow down!" if stoplight == 'yellow'
puts "stop" if stoplight == 'red'

