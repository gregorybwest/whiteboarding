// Collect every combination of 2-character strings from an array of single character.

// create an empty array of string-combinations
// loop through the string
//   for each character in the string, loop through every other character in the string
//   add the two letters to the string-combinations array
// return the string combinations array

function wordBuilder(array) {
  let stringCombos = [];
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length; j++) {
      if (i !== j) {
        stringCombos.push(array[i] + array[j]);
      }
    }
  }
  return stringCombos;
}

console.log(wordBuilder(["a", "b", "c", "d"]));
