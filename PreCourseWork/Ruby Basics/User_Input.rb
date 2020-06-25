# Opposites attract
def valid_number?(number_str)
  number_str.to_i.to_s == number_str && number_str.to_i != 0
end

def add(num1, num2)
  num1.to_i + num2.to_i
end

loop do
  puts "Please enter a positive or negative integer:"
  int1 = gets.chomp

  puts "Please enter a positive or negative integer:"
  int2 = gets.chomp

  if !valid_number?(int1) or !valid_number?(int2)
    puts "Invalid numbers. Only non-zero integers allowed. Try again"
    next
  end

  if int1.to_i > 0 && int2.to_i > 0
    puts "You must enter a negative integer as well. Try again"
    next
  elsif int1.to_i < 0 && int2.to_i < 0
    puts "You must enter a postive integer as well. Try again"
    next
  end

  answer = add(int1, int2)
  puts "#{int1} + #{int2} is equal to #{answer}"
  break
end



def printer()
  number_of_lines = nil
  loop do
    puts '>> How many output lines do you want? Enter a number >= 3:'
    number_of_lines = gets.to_i
    break if number_of_lines >= 3
    puts ">> That's not enough lines."
  end
  
  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
  printer()
end

printer()

def divide(num, den)
  num.to_i / den.to_i
end

loop do
  puts "Please enter the numerator: "
  numerator = gets.chomp

  puts "Please enter the denominator: "
  denominator = gets.chomp

  if denominator == 0
    puts "Cannot divide by 0. Try again"
    next
  end
  if !valid_number?(numerator) or !valid_number?(denominator)
    puts "Invalid numbers Try again"
    next
  end
  answer = divide(numerator, denominator)
  puts "#{numerator} / #{denominator} is equal to #{answer}"
  break
end

SECRET = {
  user: 'admin',
  pass: 'password'
}

def validate_login()
  user_name, password = get_login_creds
  login_attempt = {
    user: user_name,
    pass: password
  }

  if login_attempt != SECRET
    puts "Try again"
    validate_login()
  end

  puts "Welcome!"
end


def get_login_creds()
  puts "Please enter your username"
  user_name = gets.chomp

  puts "Please enter your password"
  password = gets.chomp
  return user_name, password
end

validate_login()

