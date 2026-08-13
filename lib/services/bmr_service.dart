class BmrService {
  double calculateBMR(double weight, double height, int age, String gender) {
    if (gender.toLowerCase() == 'male') {
      return (10 * weight) + (6.25 * height) - (5 * age) + 5;
    } else if (gender.toLowerCase() == 'female') {
      return (10 * weight) + (6.25 * height) - (5 * age) - 161;
    }
    throw ArgumentError(
      'Invalid gender. Please specify either "Male" or "Female".',
    );
  }
}
