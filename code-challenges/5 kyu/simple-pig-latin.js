// Simple Pig Latin:

// https://www.codewars.com/kata/520b9d2ad5c005041100000f/train/javascript

// Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

// Examples

// pigIt('Pig latin is cool'); // igPay atinlay siay oolcay
// pigIt('Hello world !');     // elloHay orldway !

function pigIt(str) {
    //Code here
    return str
    .split(" ")
    .map(word => {
        if (word !== "!" && word !=="?" && word !== ".") {
            return word.slice(1) + word.slice(0,1) + "ay" 
        } 
        return word
    })
    .join(" ")
  }