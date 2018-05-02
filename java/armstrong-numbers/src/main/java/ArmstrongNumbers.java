class ArmstrongNumbers {

	boolean isArmstrongNumber(int numberToCheck) {
    String numberToCheckString = String.valueOf(numberToCheck);
    int digitCount = numberToCheckString.length();
    int armstrongTotal = 0;

    for (int i = 0; i < digitCount; i++) {
      armstrongTotal += Math.pow(Character.getNumericValue(numberToCheckString.charAt(i)), digitCount);
    }

    return armstrongTotal == numberToCheck;
	}
}
