# Chapter 1 - Variables Notes
Getting user input
```
input = gets
```
*Returns input + \n*
So to exclude the new line:
```
input = gets.chomp
```
## You can declare a constant like so
```
A_CONSTANT = "super_secret"
```
However, it is important to note that this will only throw a warning if you try to change it. So it isn't *strictly a constant*
You can also declare a class variable like so
```*
@@instances = 0
```
*They can then be altered using class or instance method definitions.*

Also you can have instance variables. *They are only available throughout the instance of the parent class*


