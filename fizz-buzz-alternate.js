// write a program that prints all the numbers between 2000 and 3200 inclusive that are divisible by 7 but not divisible by 5. Each number should be separted by a comma and space

function returnNums() {
  let solution = [];
  for (let num = 2000; num <= 3200; num++) {
    if (num % 7 === 0 && num % 5 !== 0) {
      solution.push(num);
    }
  }
  return solution.join(", ");
}

console.log(returnNums());
