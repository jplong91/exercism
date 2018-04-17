var Bob = function() {};

Bob.prototype.hey = function(phrase) {
  let output = "Whatever.";
  if (phrase === phrase.toUpperCase() || phrase.to_i) {
    output = "Whoa, chill out!";
  } else if (phrase.includes("?")) {
    output = "Sure.";
  }
  return output;
};

module.exports = Bob;
