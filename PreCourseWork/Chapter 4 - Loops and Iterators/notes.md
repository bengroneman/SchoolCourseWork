# Chapter 4 - Loops & Iterators
Ruby has this nifty `until` loop which can be used like this
```
x = gets.chomp.to_i

until x < 0
 puts x
 x -= 1
end
```
Also, do/while loops seem like they could be fun
```
loop do
  puts "Do you want to repeat?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end
```
An interesting Ruby construct that does the same thing 
```
begin
  puts "Do you want to repeat?"
  answer = gets.chomp
end while answer == 'Y'
```
*While the above works, it's not recommended by Matz, the creator of Ruby.*
You can use `next` in a loop to just reset the execution of the loop. 
Whereas `break` would just quit the loop altogether

## .each method
```
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }
```
Sometimes you need to be a bit more complex but still want the speed of `.each`
```
names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end
```
**.each will return original array after executing not the final statement**

# OOO, Recursion
```
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)
```