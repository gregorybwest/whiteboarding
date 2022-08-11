// A given string contains all the letters from the alphabet except for one. Return the missing letter.

// Input: “The quick brown box jumps over a lazy dog”
// Output: “f”

// create an empty hash to store the letter of the string argument
// loop through the string input, for each letter, add the letter to the hash with a value of true
// assign a variable called "alphabet" that is a string containing the alphabet
// loop through the alphabet string, if we find a letter that isn't in the hash, return that letter

function missingLetter(string) {
  let letterHash = {};
  for (let i = 0; i < string.length; i++) {
    letterHash[string[i]] = true;
  }
  let alphabet = "abcdefghijklmnopqrstuvwxyz";
  for (let i = 0; i < alphabet.length; i++) {
    if (!letterHash[alphabet[i]]) {
      return alphabet[i];
    }
  }
}

console.log(missingLetter("the quick brown box jumps over a lazy dog"));
