// write a function that takes in a string and determines if that string is a palindrome

// set two indices, one at the begginning and one at the end of a string.
// run a loop that goes for length of string divided by two, since we stop in the middle
//     if the chars at each index are not equal, return false
//     increment beginning index and decrement end index
// if we got through the loop and didn't return false, the word is a palindrome and we can return true

function isPalindrome(string) {
  let startIndex = 0;
  let endIndex = string.length - 1;
  while (startIndex < string.length / 2) {
    if (string[startIndex] !== string[endIndex]) {
      return false;
    }
    startIndex++;
    endIndex--;
  }
  return true;
}

console.log(isPalindrome("racecar")) === true;
console.log(isPalindrome("kayak")) === true;
console.log(isPalindrome("deified")) === true;
console.log(isPalindrome("hello")) === true; // returns false
