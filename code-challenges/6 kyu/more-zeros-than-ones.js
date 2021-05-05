// More Zeros than Ones: 

// https://www.codewars.com/kata/5d41e16d8bad42002208fe1a/train/javascript/60336b092a2e470009de13a3

// Create a moreZeros function which will receive a string for input, and return an array (or null terminated string in C) containing only the characters from that string whose binary representation of its ASCII value consists of more zeros than ones.

// You should remove any duplicate characters, keeping the first occurence of any such duplicates, so they are in the same order in the final array as they first appeared in the input string.

// Examples

// 'abcde' === ["1100001", "1100010", "1100011", "1100100", "1100101"]
//                True       True       False      True       False
                   
//         --> ['a','b','d']
    
// 'DIGEST'--> ['D','I','E','T']

// All input will be valid strings of length > 0. Leading zeros in binary should not be counted.

const text2Binary = str => str.split('').map(char => {
    return char.charCodeAt(0).toString(2) });
    
    const binary2Text = arr => {
      return arr.map(letter => {
        return String.fromCharCode(parseInt(letter, 2));
      })
    }
    
    
    function moreZeros(s){
      const binary = text2Binary(s)
      const moreOnesThanZeros = binary.filter((el, index) => {
        return el.split(0).length - 1 > el.split(1).length - 1
      })
      const text = binary2Text(moreOnesThanZeros)
      return [...new Set (text)]
    }
    
    