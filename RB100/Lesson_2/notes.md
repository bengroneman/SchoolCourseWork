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


## Coding Tips

Don't display something to the output and return a meaningful value.
Since Ruby always returns a value, the key here is that the return value shouldn't be the intent of the method.

Decide whether the method should return a value with no side effects or perform side effects with no return value.
If you do both, you probably won't remember what the method does when you need to use it.
The method name should reflect whether it has side effects or not (for example, some methods in the standard Ruby library end with a ! when the method has side effects).

**In Ruby, everything is truthy except nil and false.**

## Variable Scope

Aha! The constant syntax does make a difference!
Constants are said to have a *lexical scope*
```
loop do
  MY_TEAM = "Phoenix Suns"
  break
end

puts MY_TEAM    # => Phoenix Suns
```

## Blocks!
Ahhhh, I see, if we ever want to attach a lambda function to a function to extend its functionality we can declare blocks with **yield**.
```
def greetings
  yield
  puts "Goodbye"
end

word = "Hello"

greetings do
  puts word
end

# Outputs 'Hello'
# Outputs 'Goodbye'
```

## Pass by Reference vs Pass by Value
**when an operation within the method mutates the caller, it will affect the original object**

# Ruby Mutations
---
**Use `#object_id` to help debug why you are receiving an unexpected value.

> Setter methods for class instance variables and indexed assignment are not the same as assignment. We’ll return to this below, but for now, remember that setter methods and indexed assignment usually mutate the calling object.
    

## Mutable methods

> A method is said to be mutating with respect to an argument or its caller if it modifies it.


## Object passing

```
def increment(x)
  x << 'b'
end

y = 'a'
increment(y)
puts y
```
Hypothetically, if ruby is pass by value, this code print a. The reason for this is that a *pass by value* strategy creates a copy of y before passing it to *#increment* has only a copy of y, it can't actually modify `y`.

However, if ruby is **pass by reference**, this code print *ab*. Here, ruby passes a reference to *y* to *#increment*, so *x* become an alias for *y*. When you modify *x*, you also modify the aliased object *y*.


## Closing thoughts
> **pass by reference value** is probably the most accurate answer, but it’s a hard answer to swallow when learning ruby, and isn’t particularly helpful when trying to decide what will happen if a method modifies an argument – at least not until you fully understand it.
> **pass by reference** is accurate so long as you account for assignment and immutability.
> Ruby acts like **pass by value** for immutable objects, pass by reference for mutable objects is a reasonable answer when learning about ruby, so long as you keep in mind that ruby only appears to act like this.