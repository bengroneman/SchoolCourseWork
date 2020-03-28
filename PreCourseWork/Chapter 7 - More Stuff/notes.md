# Chapter 7 - More Stuff
## The wonderful world of regex
to create a regex in Ruby just use the `=~` operator
```
"powerball" =~ /b/
```
Or you can use regex in conjunction with `.match` this way we get a MatchData object back
```
def has_a_c?(string)
  if /c/.match(string)
    puts "Matched!"
  else
    puts "no match!"
  end
end
```
## Standard classes
|Math, Time|
*Note: why is it Math.sqrt and not math.sqrt? This is because sqrt is a "class method", and not an "instance method". So far, we've been dealing mostly with instance methods, and this is one of the few times where we use a class method.*

## Blocks and Procs
You can define a block as an argument by adding an &
```
def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called #{num}"
end

```
*Procs* are blocks that are wrapped in a proc object
```
talk = Proc.new do
  puts "I am talking"
end

talk.call
```
Using procs gives us the added flexibility to be able to reuse blocks in more than one place without having to type them out every time.
```
def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)
```
```
## Exception handling
begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example, log the error
end
```


