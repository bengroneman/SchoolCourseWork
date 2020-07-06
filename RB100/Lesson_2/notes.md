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

# Debugging
Use Pry!
```
require "pry"

counter = 0

loop do
  counter += 1
  binding.pry
  break if counter === 5
end
```

## Order of precedence
Reference: [documentation]('https://ruby-doc.org/core-2.6.3/doc/syntax/precedence_rdoc.html')
```
p array.map { |num| num + 1 }      #  outputs [2, 3, 4]
                                   #  => [2, 3, 4]
```

*Blocks have the lowest precedence of all operators*
```
p array.map do |num|
  num + 1                   #  outputs #<Enumerator: [1, 2, 3]:map>
end                           #  => #<Enumerator: [1, 2, 3]:map>
```
Using a `{}` block carries higher precedence, thus leading to the following:
```
array = [1, 2, 3]

p(array.map) do |num|
  num + 1                           #  <Enumerator: [1, 2, 3]:map>
end                                 #  => <Enumerator: [1, 2, 3]:map>

p(array.map { |num| num + 1 })      # [2, 3, 4]
                                    # => [2, 3, 4]
```
Neat!

### Takeaways
Ruby evaluates expressions based on the level of precedence of the operators involved.
To override the default, use parentheses.

## *Tap* Object Instance Method
Simple usage
```
mapped_array = array.map { |num| num + 1 }

mapped_array.tap { |value| p value }              # => [2, 3, 4]
```
Debugging usage
```
(1..10)                 .tap { |x| p x }   # 1..10
 .to_a                  .tap { |x| p x }   # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 .select {|x| x.even? } .tap { |x| p x }   # [2, 4, 6, 8, 10]
 .map {|x| x*x }        .tap { |x| p x }   # [4, 16, 36, 64, 100]
```

## Mortgage Calculator
### Goal:
To build an interactive CLI interface for calculating mortgage payments
### Input:
  - loan_amount   = Number
    - Number should be valid
  - APR           = Float
    - Number should be validated  and stripped
  - loan_duration = Time
    - should be able to handle years and months
### Output:
  - monthly_interest_rate   = Float
  - loan_duration_in_months = Time
  - monthly_payment         = Number

### Test cases:
  - https://www.calculator.net/loan-calculator.html
  - to_decimal("4.02") => .0402

## Algorithm:
  # m = p * (j / (1 - (1 + j)**(-n)))
    # m = monthly payment
    # p = loan amount
    # j = monthly interest rate
    # n = loan duration in months
## Notes:
# If you're working with Annual Percentage Rate (APR),
# you'll need to convert that to a monthly interest rate.
