# Chapter 3 - Functions

## Mutating the caller
One non-obvious point here is that mutation is a concern when dealing with arrays and objects, but not with primitive values like numbers, strings, and booleans. Primitive values are immutable, which means their values never change: operations on an immutable value always return a new value. Operations on mutable values (arrays and objects) may or may not return a new value and may or may not mutate data. 


## Function expressions
You can invoke a function from anywhere in a program.
```
hello();

function hello() {
  console.log('hello');
}
// Valid
```
But if you use a *function expression* you must use it after you've declared the expression.
```
let hello = function() {
  console.log('hello');
}
hello();
// Valid
```
Another way to define a function is with the arrow syntax
```
let hello = () => console.log('Good morning');
```
