# Calculator Attempt 1
def calculator
  puts "Do you want to multiply, divide, subtract or add (type m, d, s, or a)?"
  operation_type = gets.chomp.to_s
  num1, num2 = get_nums()

  case operation_type
  when 'm'
    puts "#{num1} * #{num2} = #{num1 * num2}"
  when 's'
    puts "#{num1} - #{num2} = #{num1 - num2}"
  when 'a'
    puts "#{num1} + #{num2} = #{num1 + num2}"
  when 'd'
    puts "#{num1} / #{num2} = #{num1 / num2}"
  else
    puts 'Sorry I didn\'t understand that, try typing any of the following (m, s, or a)'
  end
end

def get_nums
  puts "Input the first number"
  n1 = gets.chomp.to_i
  puts "Input the second number"
  n2 = gets.chomp.to_i
  return n1, n2
end



calculator()