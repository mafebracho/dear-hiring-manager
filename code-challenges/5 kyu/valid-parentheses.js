// Valid Parentheses:

// https://www.codewars.com/kata/52774a314c2333f0a7000688/train/javascript/604880903b2c9b001c2bb949

// Write a function that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.

// Examples

// "()"              =>  true
// ")(()))"          =>  false
// "("               =>  false
// "(())((()())())"  =>  true
// Constraints

// 0 <= input.length <= 100

function validParentheses(parens){
    //TODO 
    let arr = []
    for (let i=0; i<parens.length; i++){
      if (parens[i] === "(") {
        arr.push(")")
      } else if (parens[i] !== arr.pop()){
        return false
      }
    }
    return arr.length === 0
  }