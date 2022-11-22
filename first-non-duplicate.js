// Write a function that returns the first non-duplicated character in a string

function firstNonDuplicate(string) {
  let letterHash = {};
  for (let i = 0; i < string.length; i++) {
    if (letterHash[string[i]]) {
      letterHash[string[i]]++;
    } else {
      letterHash[string[i]] = 1;
    }
  }
  for (let j = 0; j < string.length; j++) {
    if (letterHash[string[j]] == 1) {
      return string[j];
    }
  }
}

console.log(firstNonDuplicate("minimum"));
