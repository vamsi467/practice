//
const a = { x: 5 };
const b = a;
b.x = 10;
console.log(a);

//

const a = {
  x: { i: 5 },
};
const b = a;
b.x.i = 10;
console.log(a);

//
// [1,3,7,5] => [5,1,3,7]
// [1,3,7,5] => [1,3, 9 ,7,5]

//
Array.prototype.myMethod = function () {
  for (i = 0; i < this.length; i++) {
    this[i] = this[i].toUpperCase();
  }
};
var myArray = ["one", "two"];
myArray.myMethod();
console.log(myArray);


//
{
  // block
}

function fun() {}
setTimeout();
setInterval();
let prom = new Promise();

//
setTimeout(() => {
  console.log("a");
}, 3000);

setInterval(() => {
  console.log("b");
}, 3000);

const myPromise = new Promise((resolve, reject) => {
  setTimeout(() => {
    resolve();
  }, 3000);
});

myPromise.then(() => {
  console.log("c");
});
