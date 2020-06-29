// 1.
let bar = 1;
function foo() {
  let bar = 2;
}

foo();
console.log(bar);
// => 1

// 2.
let readline = require('readline-sync');
function getName(prompt) {
  let name = readline.question(prompt);
  return name;
}

let firstName = getName('What is your first name');
let lastName = getName('What is your last name');

console.log(`Hello ${firstName} ${lastName}`);

// 3. 
let multiply = (a, b) => a * b;

let getNumber = () => readline.question('What number to multiply?');

const n1 = getNumber();
const n2 = getNumber();

console.log(`${n1} * ${n2} == ${multiply(n1, n2)}`)

// 4. 

function times(a, b) {
  let result = a * b;

  console.log(result);
  return result;
}

function scream(words) {
  words = words + '!!!!';
  return;
  console.log(words);
}

scream('Yipeee');
// null


