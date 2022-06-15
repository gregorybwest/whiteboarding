function merge(string1, string2) {
  if (string2 === undefined) {
    return string1;
  }
  let alternatingWord = "";
  let longerString = "";
  if (string1.length > string2.length) {
    longerString = string1;
  } else {
    longerString = string2;
  }
  let i = 0;
  while (i < longerString.length) {
    if (string1[i] !== undefined) {
      alternatingWord += string1[i];
    }
    if (string2[i] !== undefined) {
      alternatingWord += string2[i];
    }
    i++;
  }
  return alternatingWord;
}

console.log(merge("abc") === "abc");
console.log(merge("abc", "123") === "a1b2c3");
console.log(merge("abc", "123456") === "a1b2c3456");
