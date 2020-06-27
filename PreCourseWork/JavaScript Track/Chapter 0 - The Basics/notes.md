# Chapter 0 - The Basics

## Implicit type coercion
We call this behavior implicit type coercion. When using +, if either operand is a string and the other is not, JavaScript coerces the non-string operand to a string; thus, the result is always another string. We'll discuss coercion in some more detail later.
```
'5' - 3
=> 2
```

## Explicit type coercion
So given a number that is within a string we can coerce it into being a number with this nice function *see also: String()*
```
Number('5')
=> 5
```
**Caution silent failure ahead:**
```
Number('nan')
=> NaN
```
When trying to access an index that doesn't exist within an array JavaScript will return undefined, instead of throwing an error

In situations where you are dealing with more messy numbers then use `parseInt()`
```
parseInt('20xya')
=> 20
```

## JavaScript Statements
See this [MDN]('https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements') page for more info


## Great point about comparing strings with operators
```
'12' < '9'
```
This question is a bit tricky: the expression evaluates as true since the operands are strings, not numbers. When you compare two strings, JavaScript performs a character-by-character comparison going from left to right, so on the first comparison, it determines that '1' < '9', so '12' must be less than '9'.'

