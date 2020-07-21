# Ruby Collections
**Syntax Sugar**
```
# This:
str[2, 3]
# Is the same as this:
str.slice(2, 3)
```

It is important to understand what will be returned from a method call.
For example, when using the `slice` method if you specify just one param, you will end up returning a value, instead of an array.

## Gothcas!

Trying to access an array element that is out of range will return nil. But what if the value exists but it is simple nil. See below example
```
arr = [3, 'd', nil]
arr[2] # => nil
arr[3] # => nil
```
Well luckily we have a nice `fetch` method that handles this issue for us, and will throw an error if the index is out of bounds. **This also applies directly to hashes**
## the PEDAC process

The PEDAC process is one approach to solving programming problems. Its primary goal is to help you identify and avoid pitfalls that you may encounter when you don't code with intent.

- P - [Understand the] Problem

- E - Examples / Test cases

- D - Data Structure

- A - Algorithm

- C - Code