// Turn String Input into Hash:

// https://www.codewars.com/kata/52180ce6f626d55cf8000071/train/javascript/608bbc40a526430026730e45

// Please write a function that will take a string as input and return a hash. The string will be formatted as such. The key will always be a symbol and the value will always be an integer.

// "a=1, b=2, c=3, d=4"
// This string should return a hash that looks like

// { 'a': 1, 'b': 2, 'c': 3, 'd': 4}


function strToHash(str){
    // ...
    if (str === "") {
      return {}
      } else {
        let obj = {}
        let arr = str.replace(/[=]/g,":").split(",")
        
        for (let i = 0; i < arr.length; i++) {
          let split = arr[i].split(":")
          obj[split[0].trim()] = Number(split[1])
        }
        return obj
      }
  }