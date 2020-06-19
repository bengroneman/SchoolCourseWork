# Opposites attract


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






def valid_number?(number_str)
  number_str.to_i.to_s == number_str
end

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

