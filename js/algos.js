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

console.log(sortByLength(names));
