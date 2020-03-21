def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)

answer = nil
while answer != "STOP"
  puts "Do you want to stop? Type STOP"
  answer = gets.chomp.to_s
  puts "okay.."
end

def countdown(n)
  puts "Launching in: #{n}"
  n -= 1
  if n != 0
    sleep(1)
    countdown(n)
  end
end


countdown(3)