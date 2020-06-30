## Truthiness

### Useful methods for understanding a primitive boolean
```
true.class
true.nil?
true.to_s
true.methods
```
*Remember this rule: everything in Ruby is considered "truthy" except for false and nil.*

## Pseudo code practice
1. a method that returns the sum of two integers
def sum(a, b)
return a+b if a.isvalid? and b.isvalid?
end
2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
def concat_str(strings)
return strings.map do |str| str
end
3. a method that takes an array of integers, and returns a new array with every other element
check = false
new_array = []
for int in array do
  if !check
    new_array.push(int)
    next
  check = !check

return new_array




