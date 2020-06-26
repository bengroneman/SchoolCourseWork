# Chapter 5 - Arrays
To push an item into an array use `.push`
```
a = ['1', 2, '3']
a.push("four")
```
Or! Use the **shovel** operator
```
a.pop
a << "four"
=> ['1', 2, '3', "four"]
```
## Map!
```
a = [1, 2, 3, 4]

a.map { |num| num**2 }

a.collect { |num| num**2 }

```
`.map` and `.collect` both work the same. They are non-destructive!

## delete_at
You can delete from an array at a particular index with:
```
a.delete_at(1)
```
*Caution! delete_at and delete are destructive*
You can also delete at a value with...
```
a.delete(1)
```
## uniq
```
b = [1, 1, 2, 2, 3, 3, 4, 4]
b.uniq # Will return only distinct values from the array
```
*uniq is non-destructive by default*
if you want to destruct the original array just add the `!` or bang operator
```
b.uniq!
```

## select
You can select items from an array based on a condition with select
```
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.select { |number| number > 4 }
```
*This method is non-destructive*
## ! operator
Similar to how the bang operator works in Lisp, it denotes a function call that will mutate the caller **This is only by convention**
*However! This isn't always the case, read the docs*
## Common Array Methods
[Reference]('launchschool.com/books/ruby/read/arrays#commonarraymethods')
## Difference between each and Map are subtle
A simple way to remember the difference is to use `each` for iteration and `map` for transformation



