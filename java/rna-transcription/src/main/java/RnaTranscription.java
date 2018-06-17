class RnaTranscription {

    String transcribe(String dnaStrand) {
      if (dnaStrand.equals("G")) {
        return "C";
      } else if (dnaStrand.equals("C")) {
        return "G";
      } else if (dnaStrand.equals("T")) {
        return "A";
      } else if (dnaStrand.equals("A")) {
        return "U";
      } else {
        return "";
      }
    }

}
