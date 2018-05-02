class Twofer {
    String twofer(String name) {
        String noNameOutput = "One for you, one for me.";
        String nameOutput = String.format("One for %s, one for me.", name);
        if (name == null) {
          return noNameOutput;
        } else {
          return nameOutput;
        }
    }
}
