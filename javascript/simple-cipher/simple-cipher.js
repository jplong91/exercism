let Cipher = function(key) {
  this.key = key || "aaaaaaaaaa";
};

Cipher.prototype.encode = function() {
  return this.key;
};

Cipher.prototype.decode = function() {
  return this.key;
};

module.exports = Cipher;

// export default class Cipher {
//   constructor(name) {
//     this.name = name;
//   }

//   showMyName() {
//     return this.name;
//   }
// }
