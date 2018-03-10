//
// This is only a SKELETON file for the "Leap" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Year = function(year) {
  this.year = year;
};

Year.prototype.isLeap = function() {
  let output = false;
  if (this.year % 400 === 0) {
    output = true;
  } else if (this.year % 100 === 0) {
    output = false;
  } else if (this.year % 4 === 0) {
    output = true;
  }
  return output;
};

module.exports = Year;
