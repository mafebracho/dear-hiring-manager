// Billiards pyramid:

// https://www.codewars.com/kata/5bb3e299484fcd5dbb002912/train/javascript/60700b51e62e6f000e6cd5e3

// Remember the triangle of balls in billiards? To build a classic triangle (5 levels) you need 15 balls. With 3 balls you can build a 2-level triangle, etc.

// For more examples,

// pyramid(1) == 1

// pyramid(3) == 2

// pyramid(6) == 3

// pyramid(10) == 4

// pyramid(15) == 5

// Write a function that takes number of balls (≥ 1) and calculates how many levels you can build a triangle.

function pyramid(balls) {
    // your code here
    let total = 0
    let ballsInRow = 0
    
    for (let i = 0; i < balls; i++) {
      total ++
      ballsInRow = ballsInRow + total
      if (ballsInRow == balls) {
        return total
      }
      if (balls < ballsInRow) {
        return total -1
      }
    }
  }