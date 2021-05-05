// Backspaces in string:

// https://www.codewars.com/kata/5727bb0fe81185ae62000ae3/train/javascript/60360f818e00850027334c98

// Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

// Your task is to process a string with "#" symbols.

// Examples

// "abc#d##c"      ==>  "ac"
// "abc##d######"  ==>  ""
// "#######"       ==>  ""
// ""              ==>  ""

function cleanString(s) {
	const result = []
  
  s.split('').forEach(letter => {
    if (letter === '#') {
      result.pop()
    } else {
      result.push(letter)
    }
  })
  return result.join('')
}