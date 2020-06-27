// Exercises

const name = 'Victor';
console.log(`Good morning, ${name}`)
console.log(`Good afternoon, ${name}`)
console.log(`Good evening, ${name}`)

// Example of shadowing a variable - can lead to some strange edge cases
let foo = 'bar';

{
  let foo = 'qux';
}

console.log(foo);
// => 'bar

