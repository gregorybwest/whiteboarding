// write a function that accepts and array of numbers and returns the product of every combination of two numbers

// set an empty array that will store the products
// loop through the array
// for each number in the array, find the product of that number and all subsequent numbers in the array
// add the products to the products array
// return the products array

function twoNumberProducts(array) {
  let products = [];
  for (let i = 0; i < array.length; i++) {
    for (let j = i + 1; j < array.length; j++) {
      products.push(array[i] * array[j]);
    }
  }
  return products;
}

console.log(twoNumberProducts([1, 2, 3, 4, 5]));
