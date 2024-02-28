import 'package:strive/models/fitness/exercise.dart';

String capitalizeFirstLetter(String input) {
  if (input == null || input.isEmpty) {
    return input;
  }
  return input[0].toUpperCase() + input.substring(1);
}

RepType convertStringToEnum(String stringValue) {
  try {
    return RepType.values.firstWhere(
      (e) => e.toString().split('.').last == stringValue,
    );
  } catch (e) {
    // Handle the case where the string doesn't match any enum values
    // You can throw an exception, return a default value, or handle it as needed.
    throw Exception('Invalid enum value: $stringValue');
  }
}
