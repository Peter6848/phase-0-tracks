var names = ["Bobby Boy", "Peter", "Billy Bob"]

function sortByLength(array) {
  longestWord = 0;
    for (var i = 0; i < array.length; i++) {
      if(array[i].length > longestWord) {
      longestWord = array[i];
    }
  }
  return longestWord;  
}

var myStuff = {surfboard: "awesome", computer: "Macbook Pro", car: "Subaru"}
var yourStuff = {surfboard: "awesome", computer: "PC", car: "Probably better than mine"}


// COULD NOT FIGURE THIS ONE OUT YET!!
function objectComparer(obj1, obj2) {
  for (var i = 0; i < obj1.length; i++) {
    if (obj1[i] === obj2[i]) {
      return true;
    }
    else {
      return false;
    }
  }
}

// WAS ABLE TO MAKE RANDOM NUMBERS FOR NUMBER GIVEN BUT NOT FOR RANGE 1-10.
function convertToString(number) {
  var newNumbers = [];
  for (var i = 0; i < number; i++) {
    newNumbers.push(Math.floor((Math.random() * 100) + 1); // + Math.random() * 10));
  }

  return newNumbers;
}

console.log(sortByLength(names));
console.log(objectComparer(myStuff, yourStuff));
console.log(convertToString(3));
