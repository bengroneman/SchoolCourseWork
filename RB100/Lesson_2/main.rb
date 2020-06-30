def prompt(msg)
  puts "=| #{msg}"
end

def valid_number?(number_str)
  begin
    Integer(number_str)
    return true
  rescue ArgumentError
    return false
  end
end

def get_math_operation_type
  prompt("Do you want to multiply(m), divide(d), subtract(s) or add(a)")
  operation_type = gets.chomp
  if !%w(m d s a).include?(operation_type)
    prompt("Whoops, those aren't valid operation types. Try again")
    prompt("You can any of the following commands:")
    prompt("a => add two numbers")
    prompt("d => divide two numbers")
    prompt("m => multiply two numbers")
    prompt("s => subtract two numbers")
    calculator()
  else
    operation_type
  end
end

def calculator
  operation_type = get_math_operation_type()
  nums = get_nums()
  perform_calculation(operation_type, nums)
  
  prompt("Do you want to go calculate another thing (y or n)?")
  answer = gets.chomp
  if answer.downcase().start_with?('y')
    calculator()
  else
    puts "Goodbye!"
  end
end

def perform_calculation(op_type, nums)
  # TODO: Allow this to  more than 2 nums
  # TODO: Find a way to loop through a hash so that we can use the commands read from a file
        # This would also mean we should hoist this config file to calculator for better reuse
  # EXAMPLE:
  # commands = {m: {name: 'multiply', operation_symbol: '*'}}
  case op_type
  when 'm'
    puts "#{nums[0]} * #{nums[1]} = #{nums[0] * nums[1]}"
  when 's'
    puts "#{nums[0]} - #{nums[1]} = #{nums[0] - nums[1]}"
  when 'a'
    puts "#{nums[0]} + #{nums[1]} = #{nums[0] + nums[1]}"
  when 'd'
    if nums[1] != 0
      puts "#{nums[0].to_f} / #{nums[1].to_f} = #{nums[0].to_f / nums[1].to_f}"
    else
      prompt("Whoops, can't divide by zero, try again")
      calculator()
    end
  else
    prompt("Sorry I didn't understand that"\
           "Try typing any of the following (m, s, or a)")
    calculator()
  end
end

def get_nums
  puts "Input the first number"
  n1 = gets.chomp
  puts "Input the second number"
  n2 = gets.chomp

  if valid_number?(n1) && valid_number?(n2)
    return n1.to_i, n2.to_i
  else
    puts "Whoops, those numbers aren't valid, try again"
    get_nums()
  end
end

calculator()
