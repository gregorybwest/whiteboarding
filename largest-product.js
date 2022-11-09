// Find the largest product of any two numbers within a given array.

// Input: [5, -2, 1, -9, -7, 2, 6]
// Output: 63 (-9 * -7)

// greatest number so far = 0
// nested loop through nums
// if j isn't equal to i
// if array i times array j greater than greatest number so far, set greatest number to it
// return greatest number so far

function largestProduct(nums) {
  let greatestNumberSoFar = 0;
  for (let i = 0; i < nums.length; i++) {
    for (let j = 0; j < nums.length; j++) {
      if (i !== j) {
        if (nums[i] * nums[j] > greatestNumberSoFar) {
          greatestNumberSoFar = nums[i] * nums[j];
        }
      }
    }
  }
  return greatestNumberSoFar;
}

console.log(largestProduct([5, -2, 1, -9, -7, 2, 6]));
