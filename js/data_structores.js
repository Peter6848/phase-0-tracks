var colors = ["Purple", "Red", "Green", "Yellow"];

var horsies = ["Carlton", "Pedro", "Pickles", "Bob"];

colors.push("Blue");
horsies.push("Shit Face");

console.log(colors);
console.log(horsies);

var key = horsies[0];
var obj = {};
obj[key] = colors[0];

console.log(obj);

function Car(year, make, isPieceOfCrap) {

  console.log("Your new car:", this);

  this.year = year;
  this.make = make;
  this.isPieceOfCrap = isPieceOfCrap;

  this.breakDownAgain = function() { console.log("Stupid piece of shit car!"); };

}

var myCar = new Car(2003, "Subaru", true);
console.log(myCar);
myCar.breakDownAgain();
