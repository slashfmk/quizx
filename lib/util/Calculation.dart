class Calculation {
  // Calculate the percentage
  static double percentage(int worked, int total) {
    return (worked * 100) / total;
  }

  // convert numbers, ex: 10 would be 0.1
  static double progressCalculation(int number) {
    return number / 100;
  }

  static String getPerformance(double percentage) {
    String result;

    if (percentage >= 0 && percentage <= 59) {
      result = "Bad";
    } else if (percentage >= 60 && percentage <= 70) {
      result = "Average";
    } else if (percentage >= 70 && percentage <= 89) {
      result = "Good";
    } else {
      result = "Excellent";
    }

    return result;
  }
}
