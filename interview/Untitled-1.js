const a = { x: 5 };
const b = a;
b.x = 10;
console.log(a);

Array.prototype.myMethod = function () {
  for (i = 0; i < this.length; i++) {
    this[i] = this[i].toUpperCase();
  }
};

var myArray = ["one", "two"];
myArray.myMethod();
console.log(myArray);



// Test
console.log("a");
setTimeout(() => {
  console.log("b");
}, 0);
console.log("c");


//   "Welcome to Qentelli" => "Qentelli to Welcome"


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
