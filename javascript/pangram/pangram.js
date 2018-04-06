var Pangram = function(inputString) {
  this.inputStringArray = inputString
    .toLowerCase()
    .trim()
    .split("");
};

Pangram.prototype.isPangram = function() {
  let alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
  this.inputStringArray.forEach(function(letter) {
    if (alphabet.includes(letter)) {
      alphabet.splice(alphabet.indexOf(letter), 1);
    }
  });
  if (alphabet.join("")) {
    return false;
  } else {
    return true;
  }
};

module.exports = Pangram;
