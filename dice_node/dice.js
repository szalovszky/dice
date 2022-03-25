const prompt = require("prompt-sync")();

var count = prompt('Count: ');
var sides = prompt('Sides: ');

var sum = 0;

for (let i = 0; i < count; i++) {
    var rand = Math.floor((Math.random() * sides) + 1);
    sum += rand;
    console.log(rand);
}
console.log("Sum: " + sum);