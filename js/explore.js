// CREATE FUNCTION THAT TAKES STRING AS PARAMETER
// ITERATE THROUGH EACH CHARACTER AND PRINT THE GIVEN STRING IN REVERSE

//function reverse(string) {
//  for (var i = 0; i < string.length; i++) {
//    console.log(string[i]);
//  }
//}

function reverse(string) {
  //if s
  return string.split('').reverse().join('');

}
var reversedStrings = []

reversedStrings.push(reverse("hello there"));
reversedStrings.push(reverse("DOGS"));
reversedStrings.push(reverse("AAAHHHAAA!!!"));

if (reversedStrings.length == 3) {
console.log(reversedStrings);
}