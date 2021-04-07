// Char Code Calculation:

// https://www.codewars.com/kata/57f75cc397d62fc93d000059/train/javascript

// Given a string, turn each character into its ASCII character code and join them together to create a number - let's call this number total1:

// 'ABC' --> 'A' = 65, 'B' = 66, 'C' = 67 --> 656667
// Then replace any incidence of the number 7 with the number 1, and call this number 'total2':

// total1 = 656667
//               ^
// total2 = 656661
//               ^
// Then return the difference between the sum of the digits in total1 and total2:

//   (6 + 5 + 6 + 6 + 6 + 7)
// - (6 + 5 + 6 + 6 + 6 + 1)
// -------------------------
//                        6

function calc(x) {
    //get ASCII value
    let ascii = []
    for (let i = 0; i < x.length; i++) {
      //console.log(x.charCodeAt(i))
      ascii.push(x.charCodeAt(i))
    }
    //turn array to string 
    const total1 = ascii.join("")
    //replace any incidence of 7 with 1
    const total2 = total1.split("").map(char => (char === "7") ? char = "1" : char = char).join("")
    //turn again to array and add 
    let reduceTotal1 = total1.split("").reduce((a,b) => Number(a) + Number(b))
    let reduceTotal2 = total2.split("").reduce((a,b) => Number(a) + Number(b))
    return reduceTotal1 - reduceTotal2 
}