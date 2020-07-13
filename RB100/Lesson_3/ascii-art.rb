require "pry"
# 1.
10.times { |num| puts (" " * num) + "Test"}

# 3.
def factors(number)
  divisor = number
  factors = []

  loop do
    if number == 0 || number < 1
      puts "Sorry pick a positive non-zero integer."
      break
    end
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end

  factors
end

# || 

while divisor > 0 do
  factors << number / divisor if number % divisor == 0
  divisor -= 1
end