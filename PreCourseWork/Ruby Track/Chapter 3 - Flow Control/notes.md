# Chapter 3 - Flow Control

When writing nice conditional one-liners you must use the then keyword
```
if x == 3 then puts "x is 3" end
```

OOO, it is also possible to condense single condition if statements like this
```
puts "x is 3" if x == 3
```
And you can run inverse conditionals with the following
```
puts "x is not equal to 3" unless x == 3
```
Using case when statements leads to a cleaner and more DRY chained conditional statement
```
a = 5
answer = case a
when 5
  "number is 5"
when 6
  "number is 6"
else
  "number is neither of (5, 6)"
end

puts answer
```