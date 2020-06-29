const print = (thing) => console.log(thing);
// 1.
false || (true && false);
// => false ^
true || (1 + 2);
// => true ^
(1 + 2) || true;
// => true \ 3
true && (1 + 2);
// => true \ 3
false && (1 + 2);
// => false ^
(1 + 2) && true;
// => true ^
(32 * 4) >= 129;
// => false ^
false !== !true;
// => true \ false
true === 4;
// => false ^
false === (847 === '847');
// => true ^
false === (847 == '847');
// => false ^
(!true || (!(100 / 5) === 20) || ((328 / 4) === 82)) || false;
// => true ^
// Score: 9/12
// 2. 
function isEven(num) {
  if (num % 2 === 0) {
    print(`${num} is even`)
    return true;
  } 
  print(`${num} is odd`)
  return false;

}

isEven(2);
isEven(3);
isEven(10);
isEven(113);

// 3. 



