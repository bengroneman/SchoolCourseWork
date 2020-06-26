hash = {
  type: 'sedan',
  color: 'blue',
  mileage: 80_000
}
p hash

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year: 2003
}
# ||
hash[:car] = 2003
p hash

car.delete(:mileage)
p car


p car[:color]

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |key, val|
  p " A #{key} number is #{val}"
end

half_numbers = numbers.map do |key, num|
  num / 2
end

p half_numbers

low_numbers = numbers.select do |key, val|
  val < 25  
end

p low_numbers

car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]
p car