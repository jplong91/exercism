var DnaTranscriber = function() {};

DnaTranscriber.prototype.toRna = function(dna) {
  let pairs = { C: "G", G: "C", A: "U", T: "A" };
  let rna = "";
  dna.split("").forEach(function(nucl) {
    if (pairs[nucl]) {
      rna += pairs[nucl];
    } else {
      throw new Error("Invalid input");
    }
  });
  return rna;
};

module.exports = DnaTranscriber;
