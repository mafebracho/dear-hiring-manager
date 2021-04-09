// Paul's Misery:

// https://www.codewars.com/kata/57ee31c5e77282c24d000024/train/javascript

// Paul is an excellent coder and sits high on the CW leaderboard. He solves kata like a banshee but would also like to lead a normal life, with other activities. But he just can't stop solving all the kata!!

// Given an array (x) you need to calculate the Paul Misery Score. The values are worth the following points:

// kata = 5
// Petes kata = 10
// life = 0
// eating = 1
// The Misery Score is the total points gained from the array. Once you have the total, return as follows:

// < 40 = 'Super happy!'
// < 70 >= 40 = 'Happy!'
// < 100 >= 70 = 'Sad!'
// > 100 = 'Miserable!'


function paul(x) {
    let count = 0
    x.forEach(el => {
      if(el == 'Petes kata') count += 10
      if(el == 'eating') count++
      if(el == 'kata') count += 5
      if(el == 'life') count
    })
    if(count < 40) return `Super happy!`
    if(count >= 40 && count < 70) return `Happy!`
    if(count >= 70 && count < 100) return `Sad!`
    if(count > 100) return `Miserable!`
  }

  // still not working