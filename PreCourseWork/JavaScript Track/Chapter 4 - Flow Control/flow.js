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
// 2. && 3.
function isEven(num) {
  if (typeof num === 'number') {
    if (num % 2 === 0) {
      print(`${num} is even`)
      return true;
    } 
    print(`${num} is odd`)
    return false;
  }
  console.log("Error, you must pass in a Number")
  return NaN;
}
// Pass
isEven(2);
isEven(3);
isEven(10);
isEven(113);
// Fail
isEven('12');
isEven(true);
isEven([2, 3, 4]);

// 4. 
function barCodeScanner(serial) {
  switch (serial) {
    case '123':
      console.log('Product1');
    case '113':
      console.log('Product2');
    case '142':
      console.log('Product3');
    default:
      console.log('Product not found!');
  }
}

barCodeScanner('113');
// The code above logs 'Product2'
// Ahhh interesting, I didn't notice the lack of break statements.
// If we add in break statements we would achieve the above console log

// 5.

return foo() ? 'bar' : qux();

if (foo()) {
  return 'bar'
} else {
  qux()
}


